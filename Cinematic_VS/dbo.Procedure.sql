CREATE  PROCEDURE getMovies
(

@Title VARCHAR(50) OUT,                   --Input parameter ,  Studentid of the student
@Genre VARCHAR (200) OUT,    -- Output parameter to collect the student name
@Duration VARCHAR (50)OUT,
@Showtime VARCHAR(50)OUT,
@Auditorium VARCHAR(50) OUT    -- Output Parameter to collect the student email
)
AS
BEGIN
SELECT @Title = Title, 
    @Genre = Genre,
	@Duration = Duration,
	@Showtime = Showtime,
	@Auditorium = Auditorium FROM Movies 
END