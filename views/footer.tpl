<footer class="p-4 shadow md:flex md:items-center md:justify-center md:p-6" id="footer">
		<div class="container px-2">
			<div class="flex flex-wrap justify-center items-center">
        {{each footer as foot sort by sort_by}}
        <div class="p-2 lg:mb-0 mb-4">
            <a href="{{foot.footer_url}}">
              <img
              src="{{foot.footer_icon.getImage()}}"
              class="w-10 h-10"
              />
            </a>
        </div>
        {{end-each}}
		</div>
    <div class="text-center p-3">
      <hr class="border-b-2 mb-8 mx-4">
			<p> {{clippings.footer_title}} </p>
		</div>
</footer>