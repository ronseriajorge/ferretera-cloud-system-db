CREATE TRIGGER actualizar_inventario
BEFORE INSERT ON transaccioninventario
FOR EACH ROW
BEGIN
    -- Verificar si el inventario ya existe
    IF EXISTS (SELECT 1 FROM inventario WHERE inventario_id = NEW.inventario_id) THEN
        -- Si el tipo de transacción es 'entrada', se suma la cantidad; si es 'salida', se resta
        IF NEW.tipo_transaccion = 'entrada' THEN
            UPDATE inventario
            SET cantidad_disponible = cantidad_disponible + NEW.cantidad,
                fecha_actualizacion = NOW()
            WHERE inventario_id = NEW.inventario_id;
        ELSEIF NEW.tipo_transaccion = 'salida' THEN
            UPDATE inventario
            SET cantidad_disponible = cantidad_disponible - NEW.cantidad,
                fecha_actualizacion = NOW()
            WHERE inventario_id = NEW.inventario_id;
        END IF;
    ELSE
        -- Si el inventario no existe, solo permite una transacción de tipo 'entrada' y crea el registro en Inventario
        IF NEW.tipo_transaccion = 'entrada' THEN
            INSERT INTO inventario (producto_id, cantidad_disponible, fecha_actualizacion)
            VALUES (NEW.producto_id, NEW.cantidad, NOW());
            SET NEW.inventario_id = LAST_INSERT_ID();
        END IF;
    END IF;
END;