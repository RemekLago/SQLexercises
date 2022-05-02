use Exercises;

select * from ksiazki;

select replace('MySql jest super', 'super', 'ekstra');

select
substr(
	replace(tytyl, 'e', '3'),
    1, 10
)
from ksiazki;


select
replace (
	replace (
		replace (
			replace (
				replace(
					tytyl, 'e', '3'
                    ),
				'a', '4'
                ),
			't', '7'
            ),
		'b', '8'
        ),
	's', '5'
	) 
from ksiazki
limit 15;


