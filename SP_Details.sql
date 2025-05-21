create procedure Watermark_sp
@last_load varchar(200)
as
begin
  Begin transaction
   update [dbo].[watermark_tbl]
     set last_load= @last_load
    commit transaction
end


select * from watermark_tbl




