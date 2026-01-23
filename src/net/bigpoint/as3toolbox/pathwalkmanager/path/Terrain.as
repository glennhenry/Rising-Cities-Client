package net.bigpoint.as3toolbox.pathwalkmanager.path
{
   import com.baseoneonline.flash.astar.AStar;
   import com.baseoneonline.flash.astar.AStarNode;
   import com.baseoneonline.flash.geom.IntPoint;
   import com.baseoneonline.flash.tile.AStarTileMap;
   import net.bigpoint.as3toolbox.pathwalkmanager.walker.interfaces.IWalker;
   
   public class Terrain
   {
      
      public static const TYPE_ALL_TERRAINS:String = "allTerrains";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!_loc1_)
      {
         TYPE_ALL_TERRAINS = "allTerrains";
      }
      
      private var _aStarMap:AStarTileMap;
      
      private var _aStar:AStar;
      
      private var _tileSize:int;
      
      public function Terrain()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc1_)
         {
            super();
         }
      }
      
      public function setMatrix(param1:Array, param2:Vector.<String>) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc4_:* = 0;
         if(_loc6_)
         {
            this._aStarMap = new AStarTileMap(param1[0].length,param1.length);
         }
         var _loc3_:int = 0;
         loop0:
         do
         {
            §§push(_loc3_);
            loop1:
            while(true)
            {
               §§push(this._aStarMap);
               loop2:
               while(true)
               {
                  §§push(§§pop().getWidth());
                  loop3:
                  while(§§pop() < §§pop())
                  {
                     §§push(0);
                     if(_loc6_ || Boolean(_loc3_))
                     {
                        _loc4_ = §§pop();
                        if(_loc5_)
                        {
                           break;
                        }
                        while(true)
                        {
                           §§push(_loc4_);
                           if(_loc6_ || Boolean(param2))
                           {
                              §§push(this._aStarMap);
                              if(_loc6_)
                              {
                                 §§push(§§pop().getHeight());
                                 if(!(_loc5_ && Boolean(_loc3_)))
                                 {
                                    if(§§pop() >= §§pop())
                                    {
                                       if(_loc6_)
                                       {
                                          break;
                                       }
                                       break loop3;
                                    }
                                    this._aStarMap.setUseable(_loc3_,_loc4_,param2[param1[_loc4_][_loc3_]]);
                                    if(_loc5_)
                                    {
                                       break;
                                    }
                                    _loc4_++;
                                    if(_loc5_)
                                    {
                                       break;
                                    }
                                    continue;
                                 }
                                 continue loop3;
                              }
                              continue loop2;
                           }
                           continue loop1;
                        }
                        continue loop0;
                     }
                     continue loop1;
                  }
                  break;
               }
               break;
            }
            break;
         }
         while(_loc3_++, _loc6_ || Boolean(param1));
         
      }
      
      public function setTileUsable(param1:int, param2:int, param3:String) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(_loc5_)
         {
            this._aStarMap.setUseable(param1,param2,param3);
         }
      }
      
      public function setTileUnusable(param1:int, param2:int, param3:String) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(_loc5_ || Boolean(param2))
         {
            this._aStarMap.setUnuseable(param1,param2,param3);
         }
      }
      
      public function set tileSize(param1:int) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            if(param1 <= 0)
            {
               if(_loc2_ || Boolean(param1))
               {
                  throw new Error("tileSize value needs to be larger than 0 ");
               }
            }
            else
            {
               this._tileSize = param1;
            }
         }
      }
      
      public function get tileSize() : int
      {
         return this._tileSize;
      }
      
      public function calculatePath(param1:IWalker, param2:String) : Vector.<IntPoint>
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc4_:Vector.<IntPoint> = null;
         var _loc5_:IntPoint = null;
         var _loc3_:Vector.<IntPoint> = new Vector.<IntPoint>();
         if(!_loc6_)
         {
            if(param1.waypoints.length < 2)
            {
               if(_loc7_ || Boolean(this))
               {
                  return _loc3_;
               }
            }
         }
         while(param1.waypoints.length - 1 > 0)
         {
            _loc4_ = this.calculate2PointPath(param1.waypoints[0],param1.waypoints[1],param2);
            if(!_loc4_)
            {
               if(_loc6_)
               {
               }
               do
               {
                  if(!param1.waypoints.length)
                  {
                     if(_loc7_ || Boolean(_loc3_))
                     {
                        return _loc3_;
                     }
                     break;
                  }
                  param1.waypoints.shift();
               }
               while(_loc7_);
               
            }
            while(_loc4_.length)
            {
               _loc5_ = _loc4_.shift();
               if(!(_loc7_ || Boolean(param1)))
               {
                  continue;
               }
               if(!_loc3_.length)
               {
                  _loc3_.push(_loc5_);
                  continue;
               }
               if(!_loc7_)
               {
                  continue;
               }
               §§push(_loc5_.x);
               if(_loc7_)
               {
                  §§push(§§pop() == _loc3_[_loc3_.length - 1].x);
                  if(_loc7_ || Boolean(_loc3_))
                  {
                     §§push(!§§pop());
                     if(_loc7_ || Boolean(_loc3_))
                     {
                        addr0124:
                        var _temp_8:* = §§pop();
                        §§push(_temp_8);
                        if(!_temp_8)
                        {
                           if(_loc7_ || Boolean(param1))
                           {
                              addr0137:
                              §§pop();
                              if(_loc6_)
                              {
                                 continue;
                              }
                              addr0142:
                              §§push(_loc5_.y == _loc3_[_loc3_.length - 1].y);
                              if(!(_loc6_ && Boolean(param1)))
                              {
                                 §§push(!§§pop());
                              }
                           }
                        }
                        if(§§pop())
                        {
                           if(!_loc6_)
                           {
                              _loc3_.push(_loc5_);
                              if(_loc6_ && Boolean(param1))
                              {
                              }
                           }
                        }
                        continue;
                     }
                     §§goto(addr0137);
                  }
                  §§goto(addr0124);
               }
               §§goto(addr0142);
            }
            if(!_loc6_)
            {
               param1.waypoints.shift();
            }
         }
         if(_loc7_ || Boolean(param2))
         {
            param1.waypoints.shift();
         }
         return _loc3_;
      }
      
      public function calculate2PointPath(param1:IntPoint, param2:IntPoint, param3:String) : Vector.<IntPoint>
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc4_:AStar = new AStar(this._aStarMap,param3);
         _loc4_.start = new AStarNode(param1.x,param1.y);
         if(!(_loc7_ && Boolean(this)))
         {
            _loc4_.goal = new AStarNode(param2.x,param2.y);
         }
         var _loc5_:Vector.<IntPoint> = _loc4_.solve();
         if(!_loc5_)
         {
            if(!(_loc7_ && Boolean(param2)))
            {
               §§push(null);
               if(!(_loc7_ && Boolean(param1)))
               {
                  return §§pop();
               }
               §§goto(addr00ac);
            }
            else
            {
               addr021c:
               _loc5_.unshift(param1);
            }
         }
         else if(_loc5_.length < 2)
         {
            if(_loc6_ || Boolean(param3))
            {
               addr00ac:
               return §§pop();
               §§push(null);
            }
         }
         else
         {
            §§push(_loc5_[0].x == _loc4_.goal.x);
            if(!_loc7_)
            {
               var _temp_7:* = §§pop();
               §§push(_temp_7);
               §§push(_temp_7);
               if(_loc6_ || Boolean(param2))
               {
                  if(§§pop())
                  {
                     if(!(_loc7_ && Boolean(param3)))
                     {
                        §§pop();
                        if(_loc6_ || Boolean(param3))
                        {
                           §§push(_loc5_[0].y == _loc4_.goal.y);
                           if(!_loc7_)
                           {
                              addr011e:
                              if(§§pop())
                              {
                                 if(!(_loc7_ && Boolean(param2)))
                                 {
                                    _loc5_.reverse();
                                    if(!_loc7_)
                                    {
                                       addr013d:
                                       §§push(_loc5_[0].x == _loc5_[1].x);
                                       if(_loc6_)
                                       {
                                          var _temp_12:* = §§pop();
                                          §§push(_temp_12);
                                          §§push(_temp_12);
                                          if(_loc6_)
                                          {
                                             if(§§pop())
                                             {
                                                if(!_loc7_)
                                                {
                                                   §§pop();
                                                   if(_loc6_ || Boolean(this))
                                                   {
                                                      §§push(_loc5_[0].y == _loc5_[1].y);
                                                      if(!(_loc7_ && Boolean(this)))
                                                      {
                                                         addr0197:
                                                         if(§§pop())
                                                         {
                                                            if(!(_loc7_ && Boolean(param2)))
                                                            {
                                                               addr01a9:
                                                               _loc5_.shift();
                                                               if(!_loc7_)
                                                               {
                                                                  addr01b5:
                                                                  §§push(_loc5_[0].x == _loc4_.start.x);
                                                                  if(_loc6_)
                                                                  {
                                                                     §§push(!§§pop());
                                                                     if(_loc6_ || Boolean(param1))
                                                                     {
                                                                        addr01db:
                                                                        var _temp_17:* = §§pop();
                                                                        addr01dc:
                                                                        §§push(_temp_17);
                                                                        if(!_temp_17)
                                                                        {
                                                                           if(!_loc7_)
                                                                           {
                                                                              §§goto(addr01f3);
                                                                           }
                                                                           §§goto(addr0211);
                                                                        }
                                                                     }
                                                                     §§goto(addr0212);
                                                                  }
                                                                  addr01f3:
                                                                  §§pop();
                                                                  if(_loc6_)
                                                                  {
                                                                     addr0212:
                                                                     addr01fa:
                                                                     §§push(_loc5_[0].y == _loc4_.start.y);
                                                                     if(_loc6_)
                                                                     {
                                                                        addr0211:
                                                                        §§push(!§§pop());
                                                                     }
                                                                     if(§§pop())
                                                                     {
                                                                        if(!_loc7_)
                                                                        {
                                                                           §§goto(addr021c);
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr0223);
                                                               }
                                                               §§goto(addr01fa);
                                                            }
                                                            §§goto(addr0223);
                                                         }
                                                         §§goto(addr01b5);
                                                      }
                                                      §§goto(addr0211);
                                                   }
                                                   §§goto(addr01a9);
                                                }
                                                §§goto(addr0211);
                                             }
                                             §§goto(addr0197);
                                          }
                                          §§goto(addr01dc);
                                       }
                                       §§goto(addr0211);
                                    }
                                    §§goto(addr01a9);
                                 }
                                 §§goto(addr021c);
                              }
                              §§goto(addr013d);
                           }
                           §§goto(addr0211);
                        }
                        §§goto(addr021c);
                     }
                     §§goto(addr01db);
                  }
                  §§goto(addr011e);
               }
               §§goto(addr01dc);
            }
            §§goto(addr011e);
         }
         addr0223:
         return _loc5_;
      }
      
      public function get map() : AStarTileMap
      {
         return this._aStarMap;
      }
      
      public function getDistanceBasedPath(param1:IntPoint, param2:int, param3:String) : Vector.<IntPoint>
      {
         §§push(false);
         var _loc12_:Boolean = true;
         var _loc13_:* = §§pop();
         var _loc7_:IntPoint = null;
         var _loc8_:Vector.<IntPoint> = null;
         var _loc9_:* = 0;
         var _loc4_:Vector.<IntPoint> = this._aStarMap.usableTiles[param3] as Vector.<IntPoint>;
         var _loc5_:Vector.<IntPoint> = new Vector.<IntPoint>();
         var _loc6_:int = -1;
         for each(_loc7_ in _loc4_)
         {
            if(_loc13_ && Boolean(param1))
            {
               continue;
            }
            _loc5_.push(_loc7_);
            if(!_loc13_)
            {
               §§push(_loc7_.x);
               if(_loc12_)
               {
                  §§push(param1.x);
                  if(_loc12_)
                  {
                     §§push(§§pop() == §§pop());
                     if(!(_loc13_ && Boolean(param2)))
                     {
                        var _temp_3:* = §§pop();
                        §§push(_temp_3);
                        if(_temp_3)
                        {
                           if(_loc12_ || Boolean(param1))
                           {
                              addr00b9:
                              §§pop();
                              if(!_loc13_)
                              {
                                 addr00c0:
                                 §§push(_loc7_.y);
                                 if(_loc12_ || Boolean(this))
                                 {
                                    addr00d6:
                                    addr00d5:
                                    if(§§pop() == param1.y)
                                    {
                                       if(_loc12_)
                                       {
                                          addr00e6:
                                          _loc6_ = int(_loc5_.length - 1);
                                          addr00e0:
                                          if(!_loc12_)
                                          {
                                             continue;
                                          }
                                       }
                                       _loc5_[_loc6_].weight = 0;
                                       if(_loc12_)
                                       {
                                       }
                                    }
                                    else
                                    {
                                       _loc5_[_loc5_.length - 1].weight = -1;
                                    }
                                    continue;
                                 }
                                 §§goto(addr00e6);
                              }
                              §§goto(addr00e0);
                           }
                        }
                        §§goto(addr00d6);
                     }
                     §§goto(addr00b9);
                  }
                  §§goto(addr00d5);
               }
               §§goto(addr00e6);
            }
            §§goto(addr00c0);
         }
         if(_loc12_)
         {
            this.addWeights(_loc5_,_loc5_[_loc6_],1,param2);
         }
         _loc8_ = new Vector.<IntPoint>();
         if(_loc12_)
         {
            §§push(-1);
            if(!_loc13_)
            {
               _loc9_ = §§pop();
               if(_loc12_)
               {
                  addr0167:
                  §§push(0);
                  if(!_loc13_)
                  {
                     var _loc10_:* = §§pop();
                     if(_loc12_ || Boolean(param3))
                     {
                        var _loc11_:* = _loc5_;
                        loop2:
                        while(true)
                        {
                           §§push(§§hasnext(_loc11_,_loc10_));
                           if(_loc13_ && Boolean(this))
                           {
                              break;
                           }
                           if(§§pop())
                           {
                              _loc7_ = §§nextvalue(_loc10_,_loc11_);
                              §§push(_loc7_.weight);
                              if(!(_loc13_ && Boolean(param2)))
                              {
                                 if(§§pop() <= _loc9_)
                                 {
                                    continue;
                                 }
                                 if(!(_loc12_ || Boolean(this)))
                                 {
                                    continue;
                                 }
                                 §§push(_loc7_.weight);
                                 if(_loc12_ || Boolean(param3))
                                 {
                                    §§push(§§pop());
                                 }
                              }
                              _loc9_ = §§pop();
                              continue;
                           }
                           if(!(_loc13_ && Boolean(this)))
                           {
                              if(!(_loc13_ && Boolean(param3)))
                              {
                                 if(!_loc13_)
                                 {
                                    addr020c:
                                    _loc10_ = 0;
                                    addr020a:
                                    if(_loc12_ || Boolean(param1))
                                    {
                                       _loc11_ = _loc5_;
                                       addr021c:
                                       while(true)
                                       {
                                          §§push(§§hasnext(_loc11_,_loc10_));
                                          break loop2;
                                       }
                                       addr025a:
                                       addr0253:
                                    }
                                    addr025c:
                                 }
                                 return _loc8_;
                              }
                              §§goto(addr021c);
                           }
                           §§goto(addr025a);
                        }
                        while(§§pop())
                        {
                           _loc7_ = §§nextvalue(_loc10_,_loc11_);
                           if(_loc7_.weight == _loc9_)
                           {
                              if(_loc12_)
                              {
                                 _loc8_.push(_loc7_);
                              }
                           }
                           §§goto(addr0253);
                        }
                        §§goto(addr025a);
                     }
                     §§goto(addr025c);
                  }
                  §§goto(addr020c);
               }
               §§goto(addr020a);
            }
            §§goto(addr020c);
         }
         §§goto(addr0167);
      }
      
      private function addWeights(param1:Vector.<IntPoint>, param2:IntPoint, param3:int, param4:int) : void
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc5_:IntPoint = null;
         if(!_loc8_)
         {
            §§push(param3);
            if(!(_loc8_ && Boolean(param1)))
            {
               §§push(§§pop() > param4);
               if(!(_loc8_ && Boolean(param1)))
               {
                  var _temp_4:* = §§pop();
                  §§push(_temp_4);
                  if(!_temp_4)
                  {
                     if(!(_loc8_ && Boolean(param3)))
                     {
                        addr0054:
                        §§pop();
                        if(_loc9_ || Boolean(param2))
                        {
                           §§goto(addr006f);
                        }
                        §§goto(addr0079);
                     }
                  }
                  addr006f:
                  if(Boolean(param1.every(this.hasWeights)))
                  {
                     if(_loc9_)
                     {
                        §§goto(addr0079);
                     }
                  }
                  §§goto(addr007c);
               }
               §§goto(addr0054);
            }
            addr007c:
            for each(_loc5_ in param1)
            {
               §§push(_loc5_.x);
               if(_loc9_ || Boolean(param3))
               {
                  §§push(param2.x);
                  if(!_loc8_)
                  {
                     §§push(§§pop() - 1);
                     if(!_loc8_)
                     {
                        §§push(§§pop() == §§pop());
                        if(!_loc8_)
                        {
                           var _temp_9:* = §§pop();
                           §§push(_temp_9);
                           §§push(_temp_9);
                           if(_loc9_)
                           {
                              if(§§pop())
                              {
                                 if(!(_loc8_ && Boolean(param1)))
                                 {
                                    §§pop();
                                    if(!(_loc8_ && Boolean(this)))
                                    {
                                       §§push(_loc5_.y);
                                       if(!(_loc8_ && Boolean(param3)))
                                       {
                                          §§push(param2.y);
                                          if(_loc9_ || Boolean(this))
                                          {
                                             §§push(§§pop() == §§pop());
                                             if(_loc9_)
                                             {
                                                addr010b:
                                                var _temp_14:* = §§pop();
                                                §§push(_temp_14);
                                                §§push(_temp_14);
                                                if(!(_loc8_ && Boolean(param3)))
                                                {
                                                   addr011a:
                                                   if(§§pop())
                                                   {
                                                      if(!_loc8_)
                                                      {
                                                         §§pop();
                                                         if(!_loc8_)
                                                         {
                                                            §§push(_loc5_.weight);
                                                            if(_loc9_ || Boolean(param2))
                                                            {
                                                               §§push(-1);
                                                               if(!(_loc8_ && Boolean(this)))
                                                               {
                                                                  §§push(§§pop() == §§pop());
                                                                  if(!(_loc8_ && Boolean(param3)))
                                                                  {
                                                                     var _temp_19:* = §§pop();
                                                                     §§push(_temp_19);
                                                                     §§push(_temp_19);
                                                                     if(!(_loc8_ && Boolean(param3)))
                                                                     {
                                                                        if(!§§pop())
                                                                        {
                                                                           if(_loc9_)
                                                                           {
                                                                              addr0176:
                                                                              §§pop();
                                                                              if(!_loc8_)
                                                                              {
                                                                                 §§push(_loc5_.weight);
                                                                                 if(!_loc8_)
                                                                                 {
                                                                                    §§push(param3);
                                                                                    if(_loc9_ || Boolean(this))
                                                                                    {
                                                                                       §§push(§§pop() > §§pop());
                                                                                       if(!(_loc8_ && Boolean(param1)))
                                                                                       {
                                                                                          addr01a6:
                                                                                          if(§§pop())
                                                                                          {
                                                                                             if(_loc9_)
                                                                                             {
                                                                                                addr01b0:
                                                                                                _loc5_.weight = param3;
                                                                                                if(_loc9_ || Boolean(param2))
                                                                                                {
                                                                                                   this.addWeights(param1,_loc5_,param3 + 1,param4);
                                                                                                   if(_loc9_)
                                                                                                   {
                                                                                                      addr01d8:
                                                                                                      §§push(_loc5_.x);
                                                                                                      if(!(_loc8_ && Boolean(param2)))
                                                                                                      {
                                                                                                         addr01ea:
                                                                                                         §§push(param2.x);
                                                                                                         if(_loc9_ || Boolean(param1))
                                                                                                         {
                                                                                                            §§push(1);
                                                                                                            if(!(_loc8_ && Boolean(this)))
                                                                                                            {
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               if(!(_loc8_ && Boolean(param2)))
                                                                                                               {
                                                                                                                  §§push(§§pop() == §§pop());
                                                                                                                  if(_loc9_)
                                                                                                                  {
                                                                                                                     var _temp_28:* = §§pop();
                                                                                                                     §§push(_temp_28);
                                                                                                                     §§push(_temp_28);
                                                                                                                     if(_loc9_ || Boolean(param1))
                                                                                                                     {
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           if(_loc9_)
                                                                                                                           {
                                                                                                                              §§pop();
                                                                                                                              if(_loc9_ || Boolean(param2))
                                                                                                                              {
                                                                                                                                 §§push(_loc5_.y);
                                                                                                                                 if(!_loc8_)
                                                                                                                                 {
                                                                                                                                    §§push(param2.y);
                                                                                                                                    if(!(_loc8_ && Boolean(param1)))
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() == §§pop());
                                                                                                                                       if(!_loc8_)
                                                                                                                                       {
                                                                                                                                          addr026b:
                                                                                                                                          var _temp_32:* = §§pop();
                                                                                                                                          §§push(_temp_32);
                                                                                                                                          §§push(_temp_32);
                                                                                                                                          if(!(_loc8_ && Boolean(param1)))
                                                                                                                                          {
                                                                                                                                             if(§§pop())
                                                                                                                                             {
                                                                                                                                                if(!(_loc8_ && Boolean(param2)))
                                                                                                                                                {
                                                                                                                                                   addr028c:
                                                                                                                                                   §§pop();
                                                                                                                                                   if(_loc9_ || Boolean(param3))
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc5_.weight);
                                                                                                                                                      if(!(_loc8_ && Boolean(param3)))
                                                                                                                                                      {
                                                                                                                                                         §§push(-1);
                                                                                                                                                         if(!(_loc8_ && Boolean(param2)))
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() == §§pop());
                                                                                                                                                            if(!(_loc8_ && Boolean(param2)))
                                                                                                                                                            {
                                                                                                                                                               var _temp_39:* = §§pop();
                                                                                                                                                               §§push(_temp_39);
                                                                                                                                                               §§push(_temp_39);
                                                                                                                                                               if(!(_loc8_ && Boolean(param2)))
                                                                                                                                                               {
                                                                                                                                                                  addr02e8:
                                                                                                                                                                  if(!§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc8_ && Boolean(param3)))
                                                                                                                                                                     {
                                                                                                                                                                        §§pop();
                                                                                                                                                                        if(_loc9_)
                                                                                                                                                                        {
                                                                                                                                                                           addr0301:
                                                                                                                                                                           §§push(_loc5_.weight);
                                                                                                                                                                           if(_loc9_ || Boolean(param2))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(param3);
                                                                                                                                                                              if(!_loc8_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr031b:
                                                                                                                                                                                 §§push(§§pop() > §§pop());
                                                                                                                                                                                 if(!(_loc8_ && Boolean(param2)))
                                                                                                                                                                                 {
                                                                                                                                                                                    addr032a:
                                                                                                                                                                                    if(§§pop())
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc9_)
                                                                                                                                                                                       {
                                                                                                                                                                                          _loc5_.weight = param3;
                                                                                                                                                                                          if(!_loc8_)
                                                                                                                                                                                          {
                                                                                                                                                                                             this.addWeights(param1,_loc5_,param3 + 1,param4);
                                                                                                                                                                                             if(_loc9_ || Boolean(param2))
                                                                                                                                                                                             {
                                                                                                                                                                                                addr035c:
                                                                                                                                                                                                §§push(_loc5_.x);
                                                                                                                                                                                                if(_loc9_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(param2.x);
                                                                                                                                                                                                   if(_loc9_ || Boolean(param1))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr0377:
                                                                                                                                                                                                      §§push(§§pop() == §§pop());
                                                                                                                                                                                                      if(!(_loc8_ && Boolean(param2)))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr0386:
                                                                                                                                                                                                         var _temp_47:* = §§pop();
                                                                                                                                                                                                         §§push(_temp_47);
                                                                                                                                                                                                         §§push(_temp_47);
                                                                                                                                                                                                         if(_loc9_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr038d:
                                                                                                                                                                                                            if(§§pop())
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!_loc8_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr0397:
                                                                                                                                                                                                                  §§pop();
                                                                                                                                                                                                                  if(_loc9_ || Boolean(this))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc5_.y);
                                                                                                                                                                                                                     if(_loc9_ || Boolean(param1))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(param2.y);
                                                                                                                                                                                                                        if(_loc9_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr03c1:
                                                                                                                                                                                                                           §§push(§§pop() - 1);
                                                                                                                                                                                                                           if(!_loc8_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr03c8:
                                                                                                                                                                                                                              §§push(§§pop() == §§pop());
                                                                                                                                                                                                                              if(_loc9_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr03cf:
                                                                                                                                                                                                                                 var _temp_50:* = §§pop();
                                                                                                                                                                                                                                 §§push(_temp_50);
                                                                                                                                                                                                                                 §§push(_temp_50);
                                                                                                                                                                                                                                 if(!(_loc8_ && Boolean(param2)))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr03de:
                                                                                                                                                                                                                                    if(§§pop())
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc9_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr03e8:
                                                                                                                                                                                                                                          §§pop();
                                                                                                                                                                                                                                          if(!(_loc8_ && Boolean(param1)))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(_loc5_.weight);
                                                                                                                                                                                                                                             if(_loc9_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr0402:
                                                                                                                                                                                                                                                §§push(-1);
                                                                                                                                                                                                                                                if(_loc9_ || Boolean(this))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr0412:
                                                                                                                                                                                                                                                   §§push(§§pop() == §§pop());
                                                                                                                                                                                                                                                   if(_loc9_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      var _temp_54:* = §§pop();
                                                                                                                                                                                                                                                      §§push(_temp_54);
                                                                                                                                                                                                                                                      §§push(_temp_54);
                                                                                                                                                                                                                                                      if(!_loc8_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr0420:
                                                                                                                                                                                                                                                         if(!§§pop())
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(!_loc8_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr042a:
                                                                                                                                                                                                                                                               §§pop();
                                                                                                                                                                                                                                                               if(!(_loc8_ && Boolean(param1)))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr0439:
                                                                                                                                                                                                                                                                  §§push(_loc5_.weight);
                                                                                                                                                                                                                                                                  if(!(_loc8_ && Boolean(param2)))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(param3);
                                                                                                                                                                                                                                                                     if(!_loc8_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr0453:
                                                                                                                                                                                                                                                                        §§push(§§pop() > §§pop());
                                                                                                                                                                                                                                                                        if(!(_loc8_ && Boolean(param3)))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr0462:
                                                                                                                                                                                                                                                                           if(§§pop())
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(!(_loc8_ && Boolean(param1)))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr0474:
                                                                                                                                                                                                                                                                                 _loc5_.weight = param3;
                                                                                                                                                                                                                                                                                 if(!_loc8_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr0480:
                                                                                                                                                                                                                                                                                    this.addWeights(param1,_loc5_,param3 + 1,param4);
                                                                                                                                                                                                                                                                                    if(_loc9_ || Boolean(param2))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr049c:
                                                                                                                                                                                                                                                                                       §§push(_loc5_.x);
                                                                                                                                                                                                                                                                                       if(!_loc8_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr04a6:
                                                                                                                                                                                                                                                                                          §§push(param2.x);
                                                                                                                                                                                                                                                                                          if(_loc9_ || Boolean(param3))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             addr04b7:
                                                                                                                                                                                                                                                                                             §§push(§§pop() == §§pop());
                                                                                                                                                                                                                                                                                             if(_loc9_ || Boolean(this))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                var _temp_62:* = §§pop();
                                                                                                                                                                                                                                                                                                §§push(_temp_62);
                                                                                                                                                                                                                                                                                                §§push(_temp_62);
                                                                                                                                                                                                                                                                                                if(_loc9_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   addr04cd:
                                                                                                                                                                                                                                                                                                   if(§§pop())
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(_loc9_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         addr04d7:
                                                                                                                                                                                                                                                                                                         §§pop();
                                                                                                                                                                                                                                                                                                         if(!(_loc8_ && Boolean(param3)))
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            addr04e6:
                                                                                                                                                                                                                                                                                                            §§push(_loc5_.y);
                                                                                                                                                                                                                                                                                                            if(_loc9_ || Boolean(param1))
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               addr04f8:
                                                                                                                                                                                                                                                                                                               §§push(param2.y);
                                                                                                                                                                                                                                                                                                               if(_loc9_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  addr0501:
                                                                                                                                                                                                                                                                                                                  addr0504:
                                                                                                                                                                                                                                                                                                                  addr0503:
                                                                                                                                                                                                                                                                                                                  §§push(§§pop() == §§pop() + 1);
                                                                                                                                                                                                                                                                                                                  if(!_loc8_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     addr050b:
                                                                                                                                                                                                                                                                                                                     var _temp_65:* = §§pop();
                                                                                                                                                                                                                                                                                                                     §§push(_temp_65);
                                                                                                                                                                                                                                                                                                                     §§push(_temp_65);
                                                                                                                                                                                                                                                                                                                     if(_loc9_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        addr0512:
                                                                                                                                                                                                                                                                                                                        if(§§pop())
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(_loc9_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              addr051c:
                                                                                                                                                                                                                                                                                                                              §§pop();
                                                                                                                                                                                                                                                                                                                              if(!_loc9_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 continue;
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              addr0523:
                                                                                                                                                                                                                                                                                                                              §§push(_loc5_.weight);
                                                                                                                                                                                                                                                                                                                              if(_loc9_ || Boolean(param1))
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 addr0536:
                                                                                                                                                                                                                                                                                                                                 §§push(-1);
                                                                                                                                                                                                                                                                                                                                 if(_loc9_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    addr053e:
                                                                                                                                                                                                                                                                                                                                    §§push(§§pop() == §§pop());
                                                                                                                                                                                                                                                                                                                                    if(_loc9_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       addr0545:
                                                                                                                                                                                                                                                                                                                                       var _temp_67:* = §§pop();
                                                                                                                                                                                                                                                                                                                                       addr0546:
                                                                                                                                                                                                                                                                                                                                       §§push(_temp_67);
                                                                                                                                                                                                                                                                                                                                       if(!_temp_67)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          if(!_loc8_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             addr0550:
                                                                                                                                                                                                                                                                                                                                             §§pop();
                                                                                                                                                                                                                                                                                                                                             if(!_loc9_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                continue;
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             addr0569:
                                                                                                                                                                                                                                                                                                                                             addr0568:
                                                                                                                                                                                                                                                                                                                                             §§push(_loc5_.weight > param3);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    addr056a:
                                                                                                                                                                                                                                                                                                                                    if(§§pop())
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       if(!_loc8_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          addr0574:
                                                                                                                                                                                                                                                                                                                                          _loc5_.weight = param3;
                                                                                                                                                                                                                                                                                                                                          if(!_loc9_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             continue;
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       addr0580:
                                                                                                                                                                                                                                                                                                                                       this.addWeights(param1,_loc5_,param3 + 1,param4);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    continue;
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr0569);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr0568);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr0550);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr056a);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr0546);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr051c);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr053e);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr0536);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr0574);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr0545);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr050b);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr0546);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr04d7);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr0501);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr04f8);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr0580);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr0574);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr049c);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr0545);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr0501);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr0536);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr0523);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr050b);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr0462);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr0512);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr051c);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr0453);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr0568);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr0523);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr042a);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr0462);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr04cd);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr050b);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr0504);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr04b7);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr0568);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr04e6);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr04d7);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr03cf);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr04cd);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr0550);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr0412);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr04f8);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr0580);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr035c);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr049c);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr035c);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr0397);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr0412);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr04a6);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr0439);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr032a);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr0546);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr051c);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr0377);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr0536);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr0301);
                                                                                                                                                }
                                                                                                                                                §§goto(addr0386);
                                                                                                                                             }
                                                                                                                                             §§goto(addr032a);
                                                                                                                                          }
                                                                                                                                          §§goto(addr03de);
                                                                                                                                       }
                                                                                                                                       §§goto(addr0545);
                                                                                                                                    }
                                                                                                                                    §§goto(addr031b);
                                                                                                                                 }
                                                                                                                                 §§goto(addr0568);
                                                                                                                              }
                                                                                                                              §§goto(addr04e6);
                                                                                                                           }
                                                                                                                           §§goto(addr04d7);
                                                                                                                        }
                                                                                                                        §§goto(addr026b);
                                                                                                                     }
                                                                                                                     §§goto(addr0420);
                                                                                                                  }
                                                                                                                  §§goto(addr0550);
                                                                                                               }
                                                                                                               §§goto(addr03c8);
                                                                                                            }
                                                                                                            §§goto(addr0503);
                                                                                                         }
                                                                                                         §§goto(addr0453);
                                                                                                      }
                                                                                                      §§goto(addr0402);
                                                                                                   }
                                                                                                   §§goto(addr049c);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr0439);
                                                                                          }
                                                                                          §§goto(addr01d8);
                                                                                       }
                                                                                       §§goto(addr042a);
                                                                                    }
                                                                                    §§goto(addr0501);
                                                                                 }
                                                                                 §§goto(addr01ea);
                                                                              }
                                                                              §§goto(addr01b0);
                                                                           }
                                                                           §§goto(addr028c);
                                                                        }
                                                                        §§goto(addr01a6);
                                                                     }
                                                                     §§goto(addr02e8);
                                                                  }
                                                                  §§goto(addr03e8);
                                                               }
                                                               §§goto(addr0377);
                                                            }
                                                            §§goto(addr01ea);
                                                         }
                                                         §§goto(addr0474);
                                                      }
                                                      §§goto(addr04d7);
                                                   }
                                                   §§goto(addr01a6);
                                                }
                                                §§goto(addr038d);
                                             }
                                             §§goto(addr03cf);
                                          }
                                          §§goto(addr0501);
                                       }
                                       §§goto(addr0402);
                                    }
                                    §§goto(addr0480);
                                 }
                                 §§goto(addr0176);
                              }
                              §§goto(addr010b);
                           }
                           §§goto(addr011a);
                        }
                        §§goto(addr0462);
                     }
                     §§goto(addr0504);
                  }
                  §§goto(addr03c1);
               }
               §§goto(addr0402);
            }
            return;
         }
         addr0079:
      }
      
      private function hasWeights(param1:IntPoint, param2:int, param3:Vector.<IntPoint>) : Boolean
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(_loc4_ || Boolean(this))
         {
            if(param1.weight != -1)
            {
               if(_loc4_ || Boolean(param1))
               {
                  addr0046:
                  §§push(true);
                  if(!(_loc5_ && Boolean(this)))
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr0056:
                  return false;
               }
               return §§pop();
            }
            §§goto(addr0056);
         }
         §§goto(addr0046);
      }
   }
}

