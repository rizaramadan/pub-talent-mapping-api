CREATE TABLE view_final_result (
    user_id VARCHAR(128) NOT NULL PRIMARY KEY,
    full_name TEXT NOT NULL,
    final_result VARCHAR(4) NOT NULL,
    outgoing INTEGER NOT NULL,
    solitary INTEGER NOT NULL,
    conceptual INTEGER NOT NULL,
    practical INTEGER NOT NULL,
    empathetic INTEGER NOT NULL,
    logical INTEGER NOT NULL,
    organized INTEGER NOT NULL,
    flexible INTEGER NOT NULL
);

create table user_submissions
(
    user_id    varchar(128) not null,
    respon_1   char         not null,
    respon_2   char         not null,
    respon_3   char         not null,
    respon_4   char         not null,
    respon_5   char         not null,
    respon_6   char         not null,
    respon_7   char         not null,
    respon_8   char         not null,
    respon_9   char         not null,
    respon_10  char         not null,
    respon_11  char         not null,
    respon_12  char         not null,
    respon_13  char         not null,
    respon_14  char         not null,
    respon_15  char         not null,
    respon_16  char         not null,
    respon_17  char         not null,
    respon_18  char         not null,
    respon_19  char         not null,
    respon_20  char         not null,
    respon_21  char         not null,
    respon_22  char         not null,
    respon_23  char         not null,
    respon_24  char         not null,
    respon_25  char         not null,
    respon_26  char         not null,
    respon_27  char         not null,
    respon_28  char         not null,
    full_name  varchar      not null,
    created_at timestamp default CURRENT_TIMESTAMP
);

create table personality_roles
(
    typology              varchar(4)  not null
        primary key,
    personality_role_name varchar(50) not null,
    cluster               varchar(20) not null
);