---
# Front matter
title: "Отчёт по лабораторной работе №4"
subtitle: "Модель гармонических колебаний"
author: "Кондрашина Мария Сергеевна"

# Generic otions
lang: ru-RU
toc-title: "Содержание"

# Pdf output format
toc: true # Table of contents
toc_depth: 2
lof: true # List of figures
lot: true # List of tables
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n
polyglossia-lang:
  name: russian
  options:
	- spelling=modern
	- babelshorthands=true
polyglossia-otherlangs:
  name: english
### Fonts
mainfont: PT Serif
romanfont: PT Serif
sansfont: PT Sans
monofont: PT Mono
mainfontoptions: Ligatures=TeX
romanfontoptions: Ligatures=TeX
sansfontoptions: Ligatures=TeX,Scale=MatchLowercase
monofontoptions: Scale=MatchLowercase,Scale=0.9
## Biblatex
biblatex: true
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=true
  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric
## Misc options
indent: true
header-includes:
  - \linepenalty=10 # the penalty added to the badness of each line within a paragraph (no associated penalty node) Increasing the value makes tex try to have fewer lines in the paragraph.
  - \interlinepenalty=0 # value of the penalty (node) added after each line of a paragraph.
  - \hyphenpenalty=50 # the penalty for line breaking at an automatically inserted hyphen
  - \exhyphenpenalty=50 # the penalty for line breaking at an explicit hyphen
  - \binoppenalty=700 # the penalty for breaking a line at a binary operator
  - \relpenalty=500 # the penalty for breaking a line at a relation
  - \clubpenalty=150 # extra penalty for breaking after first line of a paragraph
  - \widowpenalty=150 # extra penalty for breaking before last line of a paragraph
  - \displaywidowpenalty=50 # extra penalty for breaking before last line before a display math
  - \brokenpenalty=100 # extra penalty for page breaking after a hyphenated line
  - \predisplaypenalty=10000 # penalty for breaking before a display
  - \postdisplaypenalty=0 # penalty for breaking after a display
  - \floatingpenalty = 20000 # penalty for splitting an insertion (can only be split footnote in standard LaTeX)
  - \raggedbottom # or \flushbottom
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы

- Научиться строить модель гармонических колебаний.
- Выполнить лабораторную работу №4 согласно своему варианту(34) и сделать по ней отчет.

# Задание. Вариант 34

Постройте фазовый портрет гармонического осциллятора и решение уравнения гармонического осциллятора для следующих случаев:

1. Колебания гармонического осциллятора без затуханий и без действий внешней силы $\ddot{x} + 8.7x = 0$

2. Колебания гармонического осциллятора c затуханием и без действий внешней силы $\ddot{x} + 8.7\dot{x} + 8.7x = 0$

3. Колебания гармонического осциллятора c затуханием и под действием внешней силы $\ddot{x} + 8.7\dot{x} + 8.7x = 8.7sin(2t)$

На интервале $t \in [0; 0.67]$ (шаг 0.05) с начальными условиями $x_0 = 0.6$, $y_0 = -0.6$[1]

# Теоретическое введение

Гармониические колебаания — колебания, при которых физическая величина изменяется с течением времени по гармоническому (синусоидальному, косинусоидальному) закону. [2]

Линейный гармонический осциллятор – это система, совершающая одномерное движение под действием квазиупругой силы. Он является моделью, используемой во многих задачах классической и квантовой теории. Пружинный, физический и математический маятники – примеры классических гармонических осцилляторов.[3]

Уравнение свободных колебаний гармонического осциллятора имеет следующий вид:
$$\ddot{x} + 2\gamma\dot{x} + \omega_0^2x = 0$$

где x – переменная, описывающая состояние системы (смещение грузика, заряд конденсатора и т.д.), $\gamma$ – параметр, характеризующий потери энергии (трение в  механической системе, сопротивление в контуре), $\omega$ – собственная частота колебаний, t – время.[1]

# Выполнение лабораторной работы

1. Колебания гармонического осциллятора без затуханий и без действий внешней силы $\ddot{x} + 8.7x = 0$
Расчеты, случай 1:
$$\ddot{x} + 8.7x = 0$$
Можно свести к системе:
$$
\begin{cases}
\dot{x} = y\\
\dot{y} = -8.7x
\end{cases}
$$
Где, независимые переменные x, y определяют пространство, в котором «движется» решение. Это фазовое пространство системы, поскольку оно двумерно называем его фазовой плоскостью.
Значение фазовых координат x, y в любой момент времени полностью определяет состояние системы. Решению уравнения движения как функции времени отвечает гладкая кривая в фазовой плоскости. Она называется фазовой траекторией. Если множество различных решений (соответствующих различным начальным условиям) изобразить на одной фазовой плоскости, возникает общая картина поведения системы. Такую картину, образованную набором фазовых траекторий, называют фазовым портретом.[1]

Код программы: (@fig:001)

![Код программы для колебания гармонического осциллятора без затуханий и без действий внешней силы](lab4p/c1.jpg){ #fig:001 width=100%}

Графики: (@fig:002)(@fig:003)

![График для колебания гармонического осциллятора без затуханий и без действий внешней силы](lab4p/g1.jpg){ #fig:002 width=100%}

![Фазовый портрет для колебания гармонического осциллятора без затуханий и без действий внешней силы](lab4p/f1.jpg){ #fig:003 width=100%}

2. Колебания гармонического осциллятора c затуханием и без действий внешней силы $\ddot{x} + 8.7\dot{x} + 8.7x = 0$
Расчеты, случай 2:
$$\ddot{x} + 8.7\dot{x} + 8.7x = 0$$
Можно свести к системе:
$$
\begin{cases}
\dot{x} = y\\
\dot{y} = -8.7\dot{x}-8.7x
\end{cases}
$$
Код программы: (@fig:004)

![Код программы для колебания гармонического осциллятора c затуханием и без действий внешней силы](lab4p/c2.jpg){ #fig:004 width=100%}

Графики: (@fig:005)(@fig:006)

![График для колебания гармонического осциллятора c затуханием и без действий внешней силы](lab4p/g2.jpg){ #fig:005 width=100%}

![Фазовый портрет для колебания гармонического осциллятора c затуханием и без действий внешней силы](lab4p/f2.jpg){ #fig:006 width=100%}

3. Колебания гармонического осциллятора c затуханием и под действием внешней силы $\ddot{x} + 8.7\dot{x} + 8.7x = 8.7sin(2t)$
Расчеты, случай 3:
$$\ddot{x} + 8.7\dot{x} + 8.7x = 8.7sin(2t)$$
Можно свести к системе:
$$
\begin{cases}
\dot{x} = y\\
\dot{y} = -8.7\dot{x}-8.7x+8.7sin(2t)
\end{cases}
$$
Код программы: (@fig:007)

![Код программы для колебания гармонического осциллятора c затуханием и под действием внешней силы](lab4p/c3.jpg){ #fig:007 width=100%}

Графики: (@fig:008)(@fig:009)

![График для колебания гармонического осциллятора c затуханием и под действием внешней силы](lab4p/g3.jpg){ #fig:008 width=100%}

![Фазовый портрет для колебания гармонического осциллятора c затуханием и под действием внешней силы](lab4p/f3.jpg){ #fig:009 width=100%}

# Выводы

- Выполнила лабораторную работу №4.
- Познакомилась с написанием модели гармонических колебаний.
- Познакомилась с написанием математических моделей при использованиии openmodelica.

# Список литературы

1. Методические материалы курса.
2. Wikipedia. Гармонические колебания: https://ru.wikipedia.org/wiki/%D0%93%D0%B0%D1%80%D0%BC%D0%BE%D0%BD%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%B8%D0%B5_%D0%BA%D0%BE%D0%BB%D0%B5%D0%B1%D0%B0%D0%BD%D0%B8%D1%8F
3. https://studopedia.ru/4_176041_lineyniy-garmonicheskiy-ostsillyator.html