
<nav class="px-2 sm:px-4 py-2.5">
			<div class="max-w-6xl mx-auto">
				<div class="flex justify-between">
					<div class="flex space-x-7">
						<div class="flex justify-start pr-28">
							<!-- Website Logo -->
              <img src="{{clippings.logo.getImage()}}" alt="Logo" class="mr-2 bg-black sm:h-auto w-auto">
              <span class="self-center text-xl font-semibold whitespace-nowrap dark:text-white">{{clippings.site_name}}</span>
						</div>
						<!-- Primary Navbar items -->
            {{each navigation as nav sort by sort_by }}
						<div class="flex justify-center hidden md:flex items-center px-4 space-x-1">
							<a href="{{ if {nav.page_link} }} {{truepath({nav.page_link})}} {{ else }} {{truepath({nav.external_page})}} {{end-if}}" class="block py-2 rounded md:bg-transparent md:p-0 hover:text-xl hover:underline">{{nav.title}}</a>
						</div>
            {{end-each}}
					</div>
					<!-- Mobile menu button -->
					<div class="md:hidden flex items-center">
						<button class="outline-none mobile-menu-button">
						<svg class="w-6 h-6"
							x-show="!showMenu"
							fill="none"
							stroke-linecap="round"
							stroke-linejoin="round"
							stroke-width="2"
							viewBox="0 0 24 24"
							stroke="white"
						>
							<path d="M4 6h16M4 12h16M4 18h16"></path>
						</svg>
					</button>
					</div>
				</div>
			</div>
			<!-- mobile menu -->
			<div class="hidden mobile-menu">
				<ul class="">
          {{each navigation as nav sort by sort_by }}
					<li class="active"><a href="{{ if {nav.page_link} }} {{truepath({nav.page_link})}} {{ else }} {{truepath({nav.external_page})}} {{end-if}}" class="block py-2 pr-4 pl-3 rounded md:p-0 hover:text-lg hover:underline">{{nav.title}}</a></li>
          {{end-each}}
				</ul>
			</div>
		</nav>