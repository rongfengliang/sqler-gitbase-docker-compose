filecounts {
    exec = <<SQL
    SELECT
    LANGUAGE(file_path, blob_content) as lang,
    SUM(JSON_EXTRACT(LOC(file_path, blob_content), '$.code')) as code,
    SUM(JSON_EXTRACT(LOC(file_path, blob_content), '$.comment')) as comments,
    SUM(JSON_EXTRACT(LOC(file_path, blob_content), '$.blank')) as blanks,
    COUNT(1) as files
FROM commit_files
NATURAL JOIN refs
NATURAL JOIN blobs
WHERE ref_name='HEAD'
GROUP BY lang;
SQL
}