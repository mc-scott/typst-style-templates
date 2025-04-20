#show: body => report(
$if(title)$
  title: [$title$],
$endif$

$if(by-author)$
  authors: (
$for(by-author)$
$if(it.name.literal)$
    ( name: [$it.name.literal$]),
$endif$
$endfor$),
$endif$

$if(date)$
  date: [$date$],
$endif$
  body,
)