module MemosHelper
  def icon name
    content_tag('span', '', class: "glyphicon glyphicon-#{name}")
  end
end

# 부트스트랩에 아이콘이 있는데 이거를 만드는 방법이 뭐냐면 span 을 써가지고 