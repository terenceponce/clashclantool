(10..50).step(5) do |n|
  WarSize.create(name: "#{n} vs #{n}", size: n)
end
