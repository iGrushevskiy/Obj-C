-(void)run{
	[robot move2CandyAndGetIt];
	[robot get1CandyGoToNextPlaceAndPut2Candies];
}

1.Дойти[move] до конфеты и взять[pick] конфету.
2.Забрать все конфеты и переложить их в другое место.
2.Взять конфету, пойти в соседнюю клетку и положить две.
3.Вернуться в предыдущее место и взять еще одну конфету.
Пойти в соседнюю клетку и положить ее
3.Ложить конфеты

//----------
-(void)move2CandyAndGetIt{
	while ([robot noPresentCandy]&&[robot frontIsClear]){//если подо мной нет конфеты и впереди нет стенки
		[robot move];									                     //сделать шаг вперед
	}
	[robot getAllCandies];                               //как только конфета появилась подо мной, то забрать в мешок все конфеты
}

-(void)getAllCandies{
	while([robot isOverCandy]){                             //если подо мной есть конфеты
		[robot pick];		                                      //взять их
	}		
}
//----------

-(void)get1CandyGoToNextPlaceAndPut2Candies{
	while([robot isOverCandy]){
		[robot pick];
		[robot move];
		[robot put];
		[robot put];
		[robot turnRight];
		[robot turnRight];
		[robot move];
		[robot turnRight];
		[robot turnRight];
	}
}
