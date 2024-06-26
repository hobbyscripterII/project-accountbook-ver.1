package com.accountbook.project.month.dto;

import lombok.*;

@Getter
@Setter
@ToString
public class MonthBudgetDto {
    private int b_id;
    private int m_id;
    private String b_cover;
    private int b_fix;
    private int b_nonfix;
    private String b_create_date;

    @Getter
    @Setter
    @ToString
    public static class Insert {
        private int m_id;
        private String b_cover;
        private int b_fix;
        private int b_nonfix;

        public Insert(int m_id, String b_cover, int b_fix, int b_nonfix) {
            this.m_id = m_id;
            this.b_cover = b_cover;
            this.b_fix = b_fix;
            this.b_nonfix = b_nonfix;
        }
    }

    @Builder
    public static class Select {
        private int m_id;
        private String b_cover;
    }

    @Builder
    public static class Update {
        private int b_fix;
        private int b_nonfix;
        private int m_id;
        private String b_cover;
    }
}