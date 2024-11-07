-- name: GetResult :one
SELECT
        user_id,
        full_name,
        final_result,
        p.personality_role_name,
        p.cluster,
        outgoing,
        solitary,
        conceptual,
        practical,
        empathetic,
        logical,
        organized,
        flexible
    FROM view_final_result v
        left join personality_roles p on v.final_result = p.typology
    WHERE user_id =$1 LIMIT 1;


-- name: Submit :one
INSERT INTO user_submissions (
    user_id, respon_1, respon_2, respon_3, respon_4, respon_5, respon_6, respon_7, respon_8, respon_9, respon_10, 
    respon_11, respon_12, respon_13, respon_14, respon_15, respon_16, respon_17, respon_18, respon_19, respon_20, 
    respon_21, respon_22, respon_23, respon_24, respon_25, respon_26, respon_27, respon_28, full_name
) VALUES 
(
    $1, $2, $3, $4, $5, $6, $7, $8, $9, $10,
    $11, $12, $13, $14, $15, $16, $17, $18, $19, $20,
    $21, $22, $23, $24, $25, $26, $27, $28, $29, $30
) RETURNING user_id;
