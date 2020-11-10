# Конспект по Математическому Анализу на курсе МКН СП за вторую часть первого семестра первого курса
## Основные правила оформления билетов 
* Перечисление каких-либо пунктов организовывать через **itemize** или **enumerate**
```tex
    \begin{itemize / enumerate}
        \item[] ...
        \item[] ...
        ...
    \end{itemize}
```
* Доказательства писать внутри блока **proof**
```tex
    \begin{proof}
        ...
    \end{proof}
```
* Жуковские "Предложения" писать внутри блока **theorem-non**
```tex
    \begin{theorem-non} 
        ... 
    \end{theorem-non}
```
* Определения писать внутри блока **conj**
```tex
    \begin{conj} 
        ...
    \end{conj}
```
* Для следствий используйте **\follow**
```tex
    \follow
```
* Для замечаний используйте **\notice**
```tex
    \notice
```
* Новый билет начинать с новой секции 
```tex
    \section{ ... }
```
* Не забывайте про табуляцию!
* Старайтесь не делать слишком длинные строчки для лучшей читаемости кода
* Не надо коммитить файлы, которые остались от сборки tex'ов. Нужны только tex'и
## General hints по tex'у
* В формулах старайтесь вместо (что-то там) использовать \left( что-то там \right). Таким образом скобки получаются нормального размера
* Старайтесь не использовать для перевода строки \\, получаются кривые разрывы между строками. Если хотите сделать перевод строки, оставляйте пустую строку между нужными кусками.
* Вообще все переменные стоит обносить $ $, так они выглядят намного лучше.
* Множества чисел стоит писать через \mathbb{X}, X - нужная буква. Например \mathbb{Z} - красивая буква Z, для неё есть переопределенная команда \Z.
* Греческие буквы иногда встречаются в двух вариантах. Например, привычный epsilon - это не \epsilon, а \varepsilon.
* Для значков умножения стоит использовать \cdot, а не *

* Для многоточий тоже есть специальные символы: \dots, \ldots, \cdots, \ddots, etc
* Чтобы формулы не выглядели слишком скомканными, стоит разбавлять их отступами. Ставить их можно с помощью \ и пробела, точки, запятой и еще каких-то там символов. e.g. \<тут пробел>, \,, \.

* Тире пишется как ---, перед тире стоит делать неразрывной пробел (~), в итоге получается что-то типа Алгебра~--- та ещё фигня.
* Если слишком часто повторяется один и тот же код, имеет смысл сделать \newcommand в main.tex