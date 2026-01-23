package com.baseoneonline.flash.tile
{
   import net.bigpoint.as3toolbox.pathwalkmanager.path.Terrain;
   
   public class AStarTile
   {
      
      private var _types:Vector.<String>;
      
      public var id:int;
      
      public function AStarTile(param1:Vector.<String>, param2:int = -1)
      {
         super();
         this.id = param2;
         this._types = param1;
      }
      
      public function getUsable(param1:String) : Boolean
      {
         if(this._types.length)
         {
            if(param1 != Terrain.TYPE_ALL_TERRAINS)
            {
               return this._types.indexOf(param1) != -1;
            }
            return param1 == Terrain.TYPE_ALL_TERRAINS;
         }
         return false;
      }
      
      public function addType(param1:String) : void
      {
         if(param1)
         {
            if(this._types.indexOf(param1) == -1)
            {
               this._types.push(param1);
            }
         }
      }
      
      public function removeType(param1:String) : void
      {
         while(this._types.indexOf(param1) != -1)
         {
            this._types.splice(this._types.indexOf(param1),1);
         }
      }
      
      public function cleanTile() : void
      {
         this._types = new Vector.<String>();
      }
   }
}

