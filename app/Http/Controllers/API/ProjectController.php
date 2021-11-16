<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Carbon\Carbon;
use App\Task;
use App\Section;
use App\Project;
use App\LogsDetails;
use DB;
class ProjectController extends Controller
{
    public function addProject(Request $request)
    {
        $todayDate = Carbon::now()->format('Y-m-d');
        $todaytime = Carbon::now()->format('H:i:m');
        $project = new Project;
        $project->name = $request->name;
        $project->user_id = $request->user_id;
        $project->favourite = $request->favourite;
        $project->priority = $request->priority;
        $project->status = 1;
        $project->date = $todayDate;
        $project->time = $todaytime;
        $project->save();
        
        $logs = new LogsDetails();
        $logs->user_id = $request->user_id;
        $logs->option_type = "Add Project";
        $logs->option_name = "Project";
        $logs->device_id = $request->device_id;
        $logs->save();
        
        return response([ 'project'=> $project,'success' => true]);
        /*$project = Project::create($request->all());
        return response([ 'project'=> $project,'success' => true]);*/
    }
    public function updateProject(Request $request)
    {
        $updateProject =  Project::where('project_id','=',$request->project_id)->update($request->all());
            
        $logs = new LogsDetails();
        $logs->user_id = $request->user_id;
        $logs->option_type = "Update Peoject";
        $logs->option_name = "Project";
        $logs->device_id = $request->device_id;
        $logs->save();
        
        return response([ 'updateProject'=> $updateProject,'success' => true]);
    }
    
    public function duplicateProject(Request $request)
    {
        $project = Project::find($request->project_id);
        $duplicate_project = $project->replicate();
        $duplicate_project->push();
            
        $logs = new LogsDetails();
        $logs->user_id = $request->user_id;
        $logs->option_type = "Duplicate Peoject";
        $logs->option_name = "Project";
        $logs->device_id = $request->device_id;
        $logs->save();
        
        return response([ 'duplicate_project'=> $duplicate_project,'success' => true]);
    }
    public function getAllProjects(Request $request)
    {
        $user_id = $request->user_id;
        $projects = Project::where('status','=',1)->where('user_id', '=', $user_id)->get();
        
        return response([ 'projects'=> $projects,'success' => true]);
    }
    public function getSingleProject(Request $request)
    {
            $singleProject  = Project::find($request->project_id);
            
            return response([ 'singleProject'=> $singleProject,'success' => true]);
    }
    
    public function deleteProject(Request $request)
    {
            
            $deleteProject = Project::Where('project_id',$request->project_id)->update(['status'=>2]);
            
            $logs = new LogsDetails();
            $logs->user_id = $request->user_id;
            $logs->option_type = "Delete Project";
            $logs->option_name = "Project";
            $logs->device_id = $request->device_id;
            $logs->save();
            return response([ 'deleteProject'=> $deleteProject,'success' => true]);
    }
    
    // Add Section
    
    public function addSection(Request $request)
    {
        $todayDate = Carbon::now()->format('Y-m-d');
        $todaytime = Carbon::now()->format('H:i:m');
        $section = new Section;
        $section->section_name = $request->section_name;
        $section->project_id = $request->project_id;
        $section->date = $todayDate;
        $section->time = $todaytime;
        $section->status = 1;
        $section->save();
        
        $logs = new LogsDetails();
        $logs->user_id = $request->user_id;
        $logs->option_type = "Add Section";
        $logs->option_name = "Section";
        $logs->device_id = $request->device_id;
        $logs->save();
        return response([ 'section'=> $section,'success' => true]);
    }  
    
    // update Section
    
    public function updateSection(Request $request)
    {
        //$updatesection = Section::find($request->section_id);
        
        $todayDate = Carbon::now()->format('Y-m-d');
        $todaytime = Carbon::now()->format('H:i:m');
        
        $updatesection = Section::where('section_id',$request->section_id)
                         ->update([
                             'section_name' =>$request->section_name,
                             'date'=>$todayDate,
                             'time'=>$todaytime,
                             'status'=>1
                             ]);
        
        $logs = new LogsDetails();
        $logs->user_id = $request->user_id;
        $logs->option_type = "Update Section";
        $logs->option_name = "Section";
        $logs->device_id = $request->device_id;
        $logs->save();
        return response([ 'updatesection'=> $updatesection,'success' => true]);
    }  
    
    // delete Section
    
    public function deleteSection(Request $request)
    {
        
        $deleteSection = Section::where('section_id', '=', $request->section_id)->update(['status'=>2]); 
        
        $logs = new LogsDetails();
        $logs->user_id = $request->user_id;
        $logs->option_type = "Delete Section";
        $logs->option_name = "Section";
        $logs->device_id = $request->device_id;
        $logs->save();
        return response([ 'deleteSection'=> $deleteSection,'success' => true]);
    }  
    
    public function getSectionDetails(Request $request)
    {
         $getSections = Section::where('status','=',1)->where('project_id', '=', $request->project_id)->get();
        
        return response([ 'getSections'=> $getSections,'success' => true]);
    }
}
