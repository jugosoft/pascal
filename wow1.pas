program nihooja;
var
  count: integer; //Размер массива
  correct: boolean = false; //флаг, что число размера массива нам подохдит
  max_number_base_five: integer; // сюда пишем итог
  temporary: integer; // сюда скинем ввод с клавиатуры перед записью в массив
begin
  writeln('Enger a quantity of numbers:');
  
  //Пока не получим правильное число, повторяем ввод
  while correct = false do
  begin 
    readln(count);
    if (count < 0) then
      writeln('You enter ONLY Positive Number')
    else if (count > 1000) then
      writeln('No more that one thousand')
    else
      correct := true //Если все проверки по условию прошло, то зашибись
  end;
  
  // Обявим массив здесь,так как размерность заранее не ясна
  var numbers := new integer[count];
  
  //Заполняем массив с клавиатуры
  // До МИНУС одного (count - 1) так как нумерация с нуля начинается
  for var i := 0 to count - 1 do begin
    writeln('Enter number at ', i, ' position: ');
    // Считываем во временную переменную
    readln(temporary);
    // И присваиваем в массив
    numbers[ i ] := temporary; 
  end;
  
  //Выведем массив для теста, что нормально заполнено
  for var i := 0 to count - 1 do 
    write(numbers[i], ' ');
  
  //Снова прооходимся по массиву
  for var i := 0 to count - 1 do begin
    //Если делится на 5 без остатка и больше, чем предыдущее значение для ответа
    if ( numbers[i] mod 5 = 0 ) and ( numbers[i] > max_number_base_five ) then
      //То присвоим
      max_number_base_five := numbers[i];
  end;
 
  //Вывведем результат
  writeln('Max number divided by 5 without remainder is ', max_number_base_five);
  
  //Aus Wiedersehen
  readln
 end.
