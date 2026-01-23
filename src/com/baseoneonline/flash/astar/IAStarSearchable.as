package com.baseoneonline.flash.astar
{
   public interface IAStarSearchable
   {
      
      function isUseable(param1:int, param2:int, param3:String) : Boolean;
      
      function getWidth() : int;
      
      function getHeight() : int;
   }
}

