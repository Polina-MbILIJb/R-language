#4.1). Загрузить встроенный набор данных faithful
data(faithful)
#4.2). Вызвать справку и установить смысл показателей: Время продолжительности извержения и его ожидания в минутах для старого Гейзера в Йеллоустонском национальном парке.
?faithful
#4.3). Изучить структуру фрейма с помощью str(). 2 числовых столбца и 272 переменных-фактора.
str(faithful)
#4.4).Выведите в консоль первые пять строк, последние пять строк фрейма, а также описательные статистики по фрейму.
head(faithful, n = 5)
tail(faithful, n = 5)
summary(faithful)
#4.5). Получите вектор с именами столбцов фрейма (?colnames).
r <- colnames(faithful)
#4.6). Оставьте во фрейме только столбцы с количественными показателями.
#faithful[,sapply(faithful,is.numeric)]
faithful[,'eruptions',drop = FALSE]
#4.7). Рассчитайте коэффициенты вариации и среднее квартильное расстояние по каждому столбцу получившегося фрейма
eruption1 <- faithful$eruptions
waiting1 <- faithful$waiting
#Коэф-ты вариаций
sd(eruption1)/mean(eruption1)
sd(waiting1)/mean(waiting1)
#Среднее квартильное расстояние
(quantile(eruption1, c(75)/100) - quantile(eruption1, c(25)/100))/2
(quantile(waiting1, c(75)/100) - quantile(waiting1, c(25)/100))/2
