/**********************************************************************/
/*
/* Filename: packages_branch.pkg
/* Package: pa_bonus_branch
/* Developer: Manuel Szecsenyi
/* Description: Access branch data via different functions
/*
/**********************************************************************/
CREATE OR REPLACE PACKAGE pa_bonus_branch AS

    function f_get_branches RETURN SYS_REFCURSOR;

    function f_get_branch(n_branch_id_in IN NUMBER) RETURN SYS_REFCURSOR;

END pa_bonus_branch;
/

CREATE OR REPLACE PACKAGE BODY pa_bonus_branch AS

    /*********************************************************************/
    /**
    /** Function: f_get_branches
    /** Returns: rc_cursor_out - All branches
    /** Developer: Manuel Szecsenyi
    /** Description: Returns a table of all branches.
    /**
    /*********************************************************************/
    function f_get_branches RETURN SYS_REFCURSOR
	as
        rc_cursor_out SYS_REFCURSOR;
		begin

            OPEN rc_cursor_out
                FOR SELECT *
                FROM BONUS_BRANCH_OFFICES;

            RETURN rc_cursor_out;

		end;

    /*********************************************************************/
    /**
    /** Function: f_get_branch
    /** In: n_branch_id_in - The id of the branch
    /** Returns: rc_cursor_out - A single branch data
    /** Developer: Manuel Szecsenyi
    /** Description: Returns a the branch with the given id.
    /**
    /*********************************************************************/
    function f_get_branch(n_branch_id_in IN NUMBER) RETURN SYS_REFCURSOR
	as
        rc_cursor_out SYS_REFCURSOR;
		begin

            OPEN rc_cursor_out
                FOR SELECT *
                FROM BONUS_BRANCH_OFFICES
                WHERE BRANCH_OFFICE_ID = n_branch_id_in;

            RETURN rc_cursor_out;

		end;

END pa_bonus_branch;
/