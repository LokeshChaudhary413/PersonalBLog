
@extends('master')

@section('main')

    <div class="container p-5">

        <h2>Add Post</h2>
        <form action="{{route('manage_blog_process')}}" method="post" enctype="multipart/form-data">
            @csrf
            <div class="form-group">
                <label for="">Title</label>
                <input type="text" name="title" class="form-control" placeholder="Enter Title">
                @error('title')
                <span class="text-danger">{{$message}}</span>
                @enderror
            </div>
            <div class="form-group">
                <label for="">Short Description</label>
                <input type="text" name="short_desc" class="form-control" placeholder="Enter Short Description">
                @error('short_desc')
                <span class="text-danger">{{$message}}</span>
                @enderror
            </div>
            <div class="form-group">
                <label for="">Slug </label>
                <input type="text" name="slug" class="form-control" placeholder="Enter Slug">
                @error('slug')
                <span class="text-danger">{{$message}}</span>
                @enderror
            </div>
            <div class="form-group">
                <label for="">Content</label>
                <textarea type="text" name="desc" class="form-control" placeholder="Content goes here..."></textarea>
                @error('long_desc')
                <span class="text-danger">{{$message}}</span>
                @enderror
            </div>
            <div class="">
                <label for="">Image</label>
                <input type="file" name="image" class="form-control">
                @error('image')
                <span class="text-danger">{{$message}}</span>
                @enderror
            </div>
            <div class="form-group">
                <label for="">Keyword</label>
                <input type="text" name="keyword" class="form-control" placeholder="Keyword">
                @error('keyword')
                <span class="text-danger">{{$message}}</span>
                @enderror
            </div>
            <!-- <input type="hidden" name="id" value="{{$id}}"> -->
            <button class="w-100 mt-3" type="submit" style="background:#93cfbf;color:white;outline:none;border:none;padding:10px 50px;border-radius:25px;">Add Blog</button>
        </form>
    </div>
</div>

@endsection