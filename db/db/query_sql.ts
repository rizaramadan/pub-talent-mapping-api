import { QueryArrayConfig, QueryArrayResult } from "pg";

interface Client {
    query: (config: QueryArrayConfig) => Promise<QueryArrayResult>;
}

export const getResultQuery = `-- name: GetResult :one
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
    FROM talent_mapping.view_final_result v
        left join talent_mapping.personality_roles p on v.final_result = p.typology
    WHERE user_id =$1 LIMIT 1`;

export interface GetResultArgs {
    userId: string;
}

export interface GetResultRow {
    userId: string;
    fullName: string;
    finalResult: string;
    personalityRoleName: string | null;
    cluster: string | null;
    outgoing: number;
    solitary: number;
    conceptual: number;
    practical: number;
    empathetic: number;
    logical: number;
    organized: number;
    flexible: number;
}

export async function getResult(client: Client, args: GetResultArgs): Promise<GetResultRow | null> {
    const result = await client.query({
        text: getResultQuery,
        values: [args.userId],
        rowMode: "array"
    });
    if (result.rows.length !== 1) {
        return null;
    }
    const row = result.rows[0];
    return {
        userId: row[0],
        fullName: row[1],
        finalResult: row[2],
        personalityRoleName: row[3],
        cluster: row[4],
        outgoing: row[5],
        solitary: row[6],
        conceptual: row[7],
        practical: row[8],
        empathetic: row[9],
        logical: row[10],
        organized: row[11],
        flexible: row[12]
    };
}

export const submitQuery = `-- name: Submit :one
INSERT INTO talent_mapping.user_submissions (
    user_id, respon_1, respon_2, respon_3, respon_4, respon_5, respon_6, respon_7, respon_8, respon_9, respon_10, 
    respon_11, respon_12, respon_13, respon_14, respon_15, respon_16, respon_17, respon_18, respon_19, respon_20, 
    respon_21, respon_22, respon_23, respon_24, respon_25, respon_26, respon_27, respon_28, full_name
) VALUES 
(
    $1, $2, $3, $4, $5, $6, $7, $8, $9, $10,
    $11, $12, $13, $14, $15, $16, $17, $18, $19, $20,
    $21, $22, $23, $24, $25, $26, $27, $28, $29, $30
) RETURNING user_id`;

export interface SubmitArgs {
    userId: string;
    respon_1: string;
    respon_2: string;
    respon_3: string;
    respon_4: string;
    respon_5: string;
    respon_6: string;
    respon_7: string;
    respon_8: string;
    respon_9: string;
    respon_10: string;
    respon_11: string;
    respon_12: string;
    respon_13: string;
    respon_14: string;
    respon_15: string;
    respon_16: string;
    respon_17: string;
    respon_18: string;
    respon_19: string;
    respon_20: string;
    respon_21: string;
    respon_22: string;
    respon_23: string;
    respon_24: string;
    respon_25: string;
    respon_26: string;
    respon_27: string;
    respon_28: string;
    fullName: string;
}

export interface SubmitRow {
    userId: string;
}

export async function submit(client: Client, args: SubmitArgs): Promise<SubmitRow | null> {
    const result = await client.query({
        text: submitQuery,
        values: [args.userId, args.respon_1, args.respon_2, args.respon_3, args.respon_4, args.respon_5, args.respon_6, args.respon_7, args.respon_8, args.respon_9, args.respon_10, args.respon_11, args.respon_12, args.respon_13, args.respon_14, args.respon_15, args.respon_16, args.respon_17, args.respon_18, args.respon_19, args.respon_20, args.respon_21, args.respon_22, args.respon_23, args.respon_24, args.respon_25, args.respon_26, args.respon_27, args.respon_28, args.fullName],
        rowMode: "array"
    });
    if (result.rows.length !== 1) {
        return null;
    }
    const row = result.rows[0];
    return {
        userId: row[0]
    };
}

export const countSubmissionQuery = `-- name: CountSubmission :one
SELECT COUNT(*)
FROM talent_mapping.user_submissions
WHERE user_id = $1 LIMIT 1`;

export interface CountSubmissionArgs {
    userId: string;
}

export interface CountSubmissionRow {
    count: string;
}

export async function countSubmission(client: Client, args: CountSubmissionArgs): Promise<CountSubmissionRow | null> {
    const result = await client.query({
        text: countSubmissionQuery,
        values: [args.userId],
        rowMode: "array"
    });
    if (result.rows.length !== 1) {
        return null;
    }
    const row = result.rows[0];
    return {
        count: row[0]
    };
}

