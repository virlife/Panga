Panga
===
The Panga project is a little price-comparing web crawler by using gems machanize and nokogiri

It is given the name of the product and returns a hashtable containing the cheapest product of the site

Now it just compares the products on first page of "eaby.fr"

example：

```
ruby panga.rb keyboard
```

PS : The project is called Panga because panga is the cheapest fish in France :)

-------------


Panga是一个小型练手的网络爬虫项目,用到的是machanize和nokogiri 这两个gem

给出一个产品的名字，他就会返回一个网站中最便宜的产品的名字，url和价格。
现在他只能搜索ebay.fr上第一页的产品。不过这两个gem的用法都已经涉及到了。

例子

```
ruby panga.rb keyboard
```

PS: 这个项目叫做panga因为panga在法国是最便宜的鱼 :）