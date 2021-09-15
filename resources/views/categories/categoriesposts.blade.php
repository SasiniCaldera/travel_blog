@extends('layouts.app')


@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
           
            <div class="panel panel-default">
                <div class="panel-heading"> Blogs View</div>

                <div class="panel-body">
                    <div class="col-md-4">
                        
                        <ul class="list-group">
                            @if(count($categories) > 0)
                                @foreach($categories->all() as $category)
                                    <li class="list-group-item"><a href='{{url("category/{$category->id}")}}'>{{$category->category}}</a></li>
                                @endforeach
                            @else
                                <p>No categories</p>
                            @endif
                            
           s             </ul>
                        </div>
                        <div class="col-md-8">
                        @if(count($posts) > 0)
                            @foreach($posts->all() as $post)
                                <h4>{{$post->post_title}}</h4>
                                <img src="{{ $posts->post_image }}" alt="">
                                <p>{{ $post->post_body }}</p>

                                <ul class="nav nav-pills">
                                    <li role="presentation">
                                        <a href='{{ url("/like/{$post->id}")}}'>
                                            <span class="fa fa-heart"> like ()</span>
                                        </a>
                                        
                                    </li>
                                    <li role="presentation">
                                        <a href='{{ url("/dislike/{$post->id}")}}'>
                                            <span class="fa fa-thumbs-down"> dislike ()</span>
                                        </a>
                                        
                                    </li>
                                    <li role="presentation">
                                        <a href='{{ url("/comment/{$post->id}")}}'>
                                            <span class="fa fa-comments-o"> comment</span>
                                        </a>
                                        
                                    </li>
                                </ul>

                                
                               
                            @endforeach
                        @else 
                            <p>No Blogs Available</p>
                        @endif
                    </div> 
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
