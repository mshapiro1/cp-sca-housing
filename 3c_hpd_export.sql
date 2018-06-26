/**Export list of projects to Excel for sharing**/

SELECT
	project_id, building_id, project_name, primary_program_at_start, construction_type, 
  status, project_start_date, building_completion_date, projected_start_date, projected_completion_date, total_units,
  match_method, dob_job_number, dob_u_matched, incremental_hpd_units,
  geo_subdist,
  ST_X(the_geom) AS latitude, ST_Y(the_geom) AS longitude, bbl AS hpd_bbl, CONCAT(house_number,' ',street_name) AS address, borough
FROM 
    capitalplanning.hpd_2018_sca_inputs_geo_pts
ORDER BY project_id, building_id
