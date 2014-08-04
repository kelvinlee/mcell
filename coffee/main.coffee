# @codekit-prepend "js/vendor/jquery.min.js"
# @codekit-prepend "coffee/plugs.coffee"

# for banner

banner_times = 5000
banner_timer = null
bannerstar = ->
	$(".banners .banner:first").addClass("on")
	banner_timer = setTimeout bannerNext, banner_times

bannerNext = ->
	next = $(".banners .banner.on").next()
	# console.log next.index()*100
	if not next.is(".banner")
		next = $(".banners .banner:first")
	$(".banner-list").css({"left":"-"+(next.index()*100)+"%"});
	$(".banner.on").removeClass("on")
	$(".banner-span span").removeClass("on")
	$(".banner-span span").eq(next.index()).addClass("on")
	setTimeout ()-> 
		next.addClass("on")
	, 510

	banner_timer = setTimeout bannerNext, banner_times