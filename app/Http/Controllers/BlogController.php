<?php

namespace App\Http\Controllers;

use App\Models\Blog;
use Illuminate\Http\Request;

class BlogController extends Controller
{
    public function fetch()
    {
        $result['blog'] = Blog::all();
        return view('blog',$result);
    }
    
    public function manage_blog_process(Request $request)
    {
        // return $request->post('id');
       
        $request->validate([
            'title' => 'required',
            'image' => "required|mimes:jpeg,jpg,png",
            'slug' => 'required|unique:blogs,slug,'.$request->post('id'),
        ]);

       
        $model = new Blog();
           
        if($request->hasFile('image')){
            $image = $request->file('image');
            $ext = $image->extension();
            $image_name = time().'.'.$ext;
            $image->storeAs('/public/media',$image_name);
            $model->image=$image_name;
        }


        $model->keyword = $request->post('keyword');
        $model->slug = $request->post('slug');
        $model->title = $request->post('title');
        $model->short_desc = $request->post('short_desc');
        $model->desc = $request->post('desc');
        $model->status = 1;
        $model->save();
        $request->session()->flash('msg','Posted Published');
        return redirect("blog");
    }

    public function manage_blog($id="")
    {
        if($id > 0){
        
            $arr['data'] = Blog::where('id',$id)->get();
            
            $result['keyword'] = $arr['data'][0]->keyword;
            $result['slug'] = $arr['data'][0]->slug;
            $result['title'] = $arr['data'][0]->title;
            $result['short_desc'] = $arr['data'][0]->short_desc;
            $result['desc'] = $arr['data'][0]->desc;
            $result['id'] = $arr['data'][0]->id;
            // echo "<pre>";
            // print_r($result['category_name']);die;
        }else{
            // echo "hello2";
            $result['keyword'] = '';
            $result['slug'] = '';
            $result['title'] = '';
            $result['short_desc'] = '';
            $result['desc'] = '';
            $result['id'] = 0;
        }
        return view('add_blog',$result);
    }

    public function delete(Request $request,$id)
    {
        Blog::where('id',$id)->delete();
        $request->session()->flash('msgDelete','BLog Deleted');
        return redirect('admin/colors');
    }

    public function status(Request $request,$status,$id)
    {
        $model = Blog::find($id);
        $model->status=$status;
        $model->save();
        $request->session()->flash('msg','Status Updated');
        return redirect('admin/colors');
    }

    function fullPost($id){
        $data['result'] = Blog::where('slug',$id)->get();
        return view('post',$data);
        
    }
}
