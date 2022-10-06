<section class="content-accent">
    <div class="p-10 grid grid-cols-1 sm:grid-cols-1 md:grid-cols-3 lg:grid-cols-3 xl:grid-cols-3 gap-5">
        {{each careers as career sort by sort_by}}
        <a href="{{career.getUrl()}}">  
            <div class="rounded overflow-hidden shadow-lg hover:opacity-50">
                <img class="w-full" src="{{career.image.getImage()}}" alt="">
                <div class="px-6 py-4">
                    <h1 class="font-bold text-xl mb-2">{{career.title}} </h1>
                    <p class="text-gray-700 text-base">{{career.description}} </p>
                </div>
            </div>
        </a>
        {{end-each}}
    </div>
</section>



  
    


