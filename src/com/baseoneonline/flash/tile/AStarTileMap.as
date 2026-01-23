package com.baseoneonline.flash.tile
{
   import com.baseoneonline.flash.astar.IAStarSearchable;
   import com.baseoneonline.flash.geom.IntPoint;
   import com.greensock.TweenMax;
   import flash.display.Sprite;
   import flash.utils.Dictionary;
   import mx.core.FlexGlobals;
   import net.bigpoint.as3toolbox.pathwalkmanager.path.Terrain;
   import net.bigpoint.util.RandomUtilities;
   
   public class AStarTileMap implements IAStarSearchable
   {
      
      private var width:int;
      
      private var height:int;
      
      private var map:Array;
      
      private var _usableTiles:Dictionary;
      
      private var _debugFields:Dictionary;
      
      private var _debugTerrains:Boolean = false;
      
      public function AStarTileMap(param1:int, param2:int)
      {
         super();
         this.width = param1;
         this.height = param2;
         if(this._debugTerrains)
         {
            this._debugFields = new Dictionary(true);
         }
         this._usableTiles = new Dictionary(true);
         this.initialize();
      }
      
      public function getWidth() : int
      {
         return this.width;
      }
      
      public function getHeight() : int
      {
         return this.height;
      }
      
      public function initialize() : void
      {
         var _loc2_:int = 0;
         this.map = new Array(this.width);
         var _loc1_:int = 0;
         while(_loc1_ < this.width)
         {
            this.map[_loc1_] = new Array(this.height);
            _loc2_ = 0;
            while(_loc2_ < this.height)
            {
               this.map[_loc1_][_loc2_] = new AStarTile(new Vector.<String>());
               _loc2_++;
            }
            _loc1_++;
         }
      }
      
      public function getTile(param1:int, param2:int) : AStarTile
      {
         if(!this.isOutOfBounds(param1,param2))
         {
            return this.map[param1][param2];
         }
         return null;
      }
      
      public function setUseable(param1:int, param2:int, param3:String) : void
      {
         if(!this.isOutOfBounds(param1,param2))
         {
            var _loc4_:IntPoint = new IntPoint(param1,param2);
            var _loc5_:int = -1;
            if(param3)
            {
               if(this._debugFields)
               {
                  if(!this._debugFields[param3])
                  {
                     var _loc7_:int = 0;
                     for each(var _loc8_ in this._debugFields)
                     {
                        _loc7_++;
                     }
                     var _loc9_:Sprite = new Sprite();
                     _loc9_.x = 0 * this.width * 10;
                     this._debugFields[param3] = null;
                     switch(0)
                     {
                        case 1:
                           TweenMax.to(null,0.1,{"tint":16711680});
                           break;
                        case 2:
                           TweenMax.to(null,0.1,{"tint":65280});
                           break;
                        case 0:
                           TweenMax.to(null,0.1,{"tint":255});
                     }
                     FlexGlobals.topLevelApplication.stage.addChild(null);
                  }
               }
            }
            if(!this._usableTiles[param3])
            {
               this._usableTiles[param3] = new Vector.<IntPoint>();
            }
            if(!this._usableTiles[Terrain.TYPE_ALL_TERRAINS])
            {
               this._usableTiles[Terrain.TYPE_ALL_TERRAINS] = new Vector.<IntPoint>();
            }
            var _loc6_:int = 0;
            while(0 < this._usableTiles[param3].length)
            {
               if(null.x == this._usableTiles[param3][0].x && null.y == this._usableTiles[param3][0].y)
               {
                  _loc5_ = 0;
                  break;
               }
               _loc6_++;
            }
            if(!param3)
            {
               this._usableTiles[param3].splice(0,1);
               if(param3 != Terrain.TYPE_ALL_TERRAINS)
               {
                  this._usableTiles[Terrain.TYPE_ALL_TERRAINS].splice(0,1);
               }
            }
            AStarTile(this.map[param1][param2]).addType(param3);
            if(this._debugFields)
            {
               _loc9_ = this._debugFields[param3];
               if(_loc9_)
               {
                  var _loc10_:Sprite = new Sprite();
                  _loc10_.name = "cell" + param1 + "_" + param2;
                  null.x = param1 * 10;
                  null.y = param2 * 10;
                  null.graphics.beginFill(0,1);
                  null.graphics.drawRect(0,0,10,10);
                  null.graphics.endFill();
                  null.addChild(null);
               }
            }
         }
      }
      
      public function setUnuseable(param1:int, param2:int, param3:String) : void
      {
         if(!this.isOutOfBounds(param1,param2))
         {
            var _loc4_:IntPoint = new IntPoint(param1,param2);
            var _loc5_:int = -1;
            if(param3)
            {
               if(!this._usableTiles[param3])
               {
                  this._usableTiles[param3] = new Vector.<IntPoint>();
               }
            }
            if(this._debugFields)
            {
               if(!this._debugFields[param3])
               {
                  var _loc7_:int = 0;
                  for each(var _loc8_ in this._debugFields)
                  {
                     _loc7_++;
                  }
                  var _loc9_:Sprite = new Sprite();
                  _loc9_.x = 0 * this.width * 10;
                  this._debugFields[param3] = null;
                  switch(0)
                  {
                     case 1:
                        TweenMax.to(null,0.1,{"tint":16711680});
                        break;
                     case 2:
                        TweenMax.to(null,0.1,{"tint":65280});
                        break;
                     default:
                        TweenMax.to(null,0.1,{"tint":255});
                  }
                  FlexGlobals.topLevelApplication.stage.addChild(null);
               }
            }
            if(!this._usableTiles[Terrain.TYPE_ALL_TERRAINS])
            {
               this._usableTiles[Terrain.TYPE_ALL_TERRAINS] = new Vector.<IntPoint>();
            }
            var _loc6_:int = 0;
            while(0 < this._usableTiles[param3].length)
            {
               if(null.x == this._usableTiles[param3][0].x && null.y == this._usableTiles[param3][0].y)
               {
                  _loc5_ = 0;
                  break;
               }
               _loc6_++;
            }
            if(param3)
            {
               this._usableTiles[param3].splice(0,1);
               if(param3 != Terrain.TYPE_ALL_TERRAINS)
               {
                  this._usableTiles[Terrain.TYPE_ALL_TERRAINS].splice(0,1);
               }
            }
            AStarTile(this.map[param1][param2]).removeType(param3);
            if(this._debugFields)
            {
               _loc9_ = this._debugFields[param3];
               if(_loc9_)
               {
                  var _loc10_:String = "cell" + param1 + "_" + param2;
                  null.removeChild(null.getChildByName(null));
               }
            }
         }
      }
      
      public function isUseable(param1:int, param2:int, param3:String) : Boolean
      {
         if(!this.isOutOfBounds(param1,param2))
         {
            return AStarTile(this.map[param1][param2]).getUsable(param3);
         }
         return false;
      }
      
      public function isOutOfBounds(param1:int, param2:int) : Boolean
      {
         if(param1 < 0 || param1 > this.width - 1 || param2 < 0 || param2 > this.height - 1)
         {
            return true;
         }
         return false;
      }
      
      public function get usableTiles() : Dictionary
      {
         return this._usableTiles;
      }
      
      public function setAllTilesUnusable() : void
      {
         var _loc1_:Sprite = null;
         var _loc3_:Vector.<IntPoint> = null;
         var _loc4_:int = 0;
         for each(_loc1_ in this._debugFields)
         {
            RandomUtilities.cleanRemoveChild(_loc1_);
         }
         if(this._debugTerrains)
         {
            this._debugFields = new Dictionary();
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.width)
         {
            _loc4_ = 0;
            while(_loc4_ < this.height)
            {
               if(this.map[_loc2_][_loc4_] is AStarTile)
               {
                  AStarTile(this.map[_loc2_][_loc4_]).cleanTile();
               }
               _loc4_++;
            }
            _loc2_++;
         }
         for each(_loc3_ in this._usableTiles)
         {
            while(_loc3_.length > 0)
            {
               _loc3_.pop();
            }
         }
      }
   }
}

