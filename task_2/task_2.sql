CREATE OR REPLACE FUNCTION transfer_card(
    v_old_card INT,
    v_new_card INT
) RETURNS VOID AS $$
DECLARE
    limit_transfers INT := 5;  -- Лимит переносов в год
    current_date DATE := CURRENT_DATE;
    start_date DATE;
    transfer_count INT;
    next_possible_date DATE;
    last_issue_date DATE;
    last_return_date DATE;
BEGIN
    -- Находим дату последней выдачи карты
    SELECT MAX(dt)
    INTO last_issue_date
    FROM cards_transfer
    WHERE new_card = v_new_card;

    -- Находим дату последней сдачи карты
    SELECT MAX(dt)
    INTO last_return_date
    FROM cards_transfer
    WHERE old_card = v_new_card;

    -- Проверяем, активна ли карта
    IF last_issue_date IS NOT NULL AND (last_return_date IS NULL OR last_issue_date > last_return_date) THEN
        -- Если дата последней выдачи карты позже даты сдачи, то карта активна
        RAISE EXCEPTION 'Карта % уже выдана и активна с %', v_new_card, last_issue_date;
    END IF;

    -- Определяем дату начала отсчета (один год назад)
    start_date := current_date - INTERVAL '1 year';

    -- Считаем количество переносов с карты за последний год
    SELECT COUNT(*)
    INTO transfer_count
    FROM cards_transfer
    WHERE (old_card = v_old_card OR new_card = v_old_card)
      AND dt BETWEEN start_date AND current_date;

    -- Проверяем, превышен ли лимит переносов
    IF transfer_count >= limit_transfers THEN
        -- Находим дату следующей возможной замены карты
        SELECT MIN(dt) + INTERVAL '1 year'
        INTO next_possible_date
        FROM cards_transfer
        WHERE (old_card = v_old_card OR new_card = v_old_card);

        -- Сообщаем пользователю дату следующей возможной замены карты
        RAISE NOTICE 'Лимит переносов исчерпан. Следующую замену карты можно будет сделать после %', next_possible_date;
    ELSE
        -- Вставляем новую запись о переносе карты
        INSERT INTO cards_transfer (old_card, new_card, dt)
        VALUES (v_old_card, v_new_card, current_date);

        -- Сообщаем, что перенос выполнен успешно
        RAISE NOTICE 'Перенос карты успешно выполнен.';
    END IF;
END $$ LANGUAGE plpgsql;


SELECT transfer_card(888, 999);