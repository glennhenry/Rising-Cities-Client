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
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_)
         {
            super();
            if(!(_loc3_ && Boolean(param1)))
            {
               addr002a:
               this.width = param1;
               if(!_loc3_)
               {
                  this.height = param2;
                  if(_loc4_ || Boolean(this))
                  {
                     if(this._debugTerrains)
                     {
                        if(_loc4_)
                        {
                           addr006f:
                           this._debugFields = new Dictionary(true);
                           if(!_loc3_)
                           {
                              addr007e:
                              this._usableTiles = new Dictionary(true);
                              if(_loc4_ || Boolean(param2))
                              {
                                 addr0096:
                                 this.initialize();
                              }
                              §§goto(addr009a);
                           }
                           §§goto(addr0096);
                        }
                        §§goto(addr009a);
                     }
                     §§goto(addr007e);
                  }
                  §§goto(addr006f);
               }
            }
            addr009a:
            return;
         }
         §§goto(addr002a);
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
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:* = 0;
         if(!(_loc4_ && Boolean(_loc2_)))
         {
            this.map = new Array(this.width);
         }
         var _loc1_:int = 0;
         loop0:
         do
         {
            §§push(_loc1_);
            loop1:
            while(true)
            {
               §§push(this.width);
               loop2:
               while(§§pop() < §§pop())
               {
                  §§push(this.map);
                  if(!_loc4_)
                  {
                     §§push(_loc1_);
                     if(!_loc4_)
                     {
                        §§pop()[§§pop()] = new Array(this.height);
                        if(_loc4_)
                        {
                           continue loop0;
                        }
                        §§push(0);
                        if(_loc3_)
                        {
                           _loc2_ = §§pop();
                           if(!(_loc4_ && Boolean(this)))
                           {
                              loop3:
                              while(true)
                              {
                                 §§push(_loc2_);
                                 if(_loc4_ && Boolean(_loc2_))
                                 {
                                    break;
                                 }
                                 while(true)
                                 {
                                    §§push(this.height);
                                    if(!(_loc3_ || Boolean(_loc2_)))
                                    {
                                       break;
                                    }
                                    if(§§pop() >= §§pop())
                                    {
                                       if(_loc4_)
                                       {
                                          break loop2;
                                       }
                                       continue loop0;
                                    }
                                    addr0087:
                                    §§push(this.map);
                                    while(true)
                                    {
                                       §§push(_loc1_);
                                       addr0088:
                                       while(true)
                                       {
                                          §§pop()[§§pop()][_loc2_] = new AStarTile(new Vector.<String>());
                                          if(_loc4_)
                                          {
                                             continue loop3;
                                          }
                                       }
                                    }
                                 }
                                 continue loop2;
                              }
                              continue loop1;
                              addr00ad:
                           }
                           while(true)
                           {
                              _loc2_++;
                              if(_loc4_)
                              {
                                 break;
                              }
                              §§goto(addr00ad);
                           }
                           continue loop0;
                        }
                        §§goto(addr00c8);
                     }
                     §§goto(addr0088);
                  }
                  §§goto(addr0087);
               }
               break;
            }
            break;
         }
         while(_loc1_++, _loc3_);
         
      }
      
      public function getTile(param1:int, param2:int) : AStarTile
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!(_loc3_ && Boolean(param1)))
         {
            if(!this.isOutOfBounds(param1,param2))
            {
               if(_loc4_)
               {
                  return this.map[param1][param2];
               }
            }
         }
         return null;
      }
      
      public function setUseable(param1:int, param2:int, param3:String) : void
      {
         §§push(false);
         var _loc13_:Boolean = true;
         var _loc14_:* = §§pop();
         var _loc4_:IntPoint = null;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:Sprite = null;
         var _loc9_:Sprite = null;
         var _loc10_:Sprite = null;
         if(!_loc14_)
         {
            if(!this.isOutOfBounds(param1,param2))
            {
               addr0047:
               _loc4_ = new IntPoint(param1,param2);
               if(!_loc14_)
               {
                  §§push(-1);
                  if(_loc13_ || Boolean(param3))
                  {
                     _loc5_ = §§pop();
                     if(_loc13_)
                     {
                        if(param3)
                        {
                           if(!_loc14_)
                           {
                              if(this._debugFields)
                              {
                                 if(!_loc14_)
                                 {
                                    addr008c:
                                    if(!this._debugFields[param3])
                                    {
                                       if(!_loc14_)
                                       {
                                          addr00b2:
                                          §§push(0);
                                          if(_loc13_ || Boolean(this))
                                          {
                                             _loc7_ = §§pop();
                                             addr00b0:
                                             §§push(0);
                                          }
                                          for each(_loc8_ in this._debugFields)
                                          {
                                             if(_loc13_)
                                             {
                                                _loc7_++;
                                             }
                                          }
                                          if(_loc13_)
                                          {
                                             _loc9_ = new Sprite();
                                             _loc9_.x = _loc7_ * this.width * 10;
                                             if(!(_loc14_ && Boolean(param2)))
                                             {
                                                this._debugFields[param3] = _loc9_;
                                                if(_loc13_)
                                                {
                                                   addr0184:
                                                   §§push(_loc7_);
                                                   if(!(_loc14_ && Boolean(param2)))
                                                   {
                                                      var _loc11_:* = §§pop();
                                                      if(!_loc14_)
                                                      {
                                                         §§push(1);
                                                         if(!_loc14_)
                                                         {
                                                            §§push(_loc11_);
                                                            if(_loc13_ || Boolean(param1))
                                                            {
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  if(!_loc14_)
                                                                  {
                                                                     §§push(0);
                                                                     if(!_loc13_)
                                                                     {
                                                                        addr01d2:
                                                                        §§push(_loc11_);
                                                                        if(!(_loc14_ && Boolean(this)))
                                                                        {
                                                                           addr01e2:
                                                                           if(§§pop() === §§pop())
                                                                           {
                                                                              if(!(_loc14_ && Boolean(param1)))
                                                                              {
                                                                                 addr01f4:
                                                                                 §§push(1);
                                                                                 if(!_loc13_)
                                                                                 {
                                                                                    addr0208:
                                                                                    addr020a:
                                                                                    if(§§pop() === _loc11_)
                                                                                    {
                                                                                       addr020e:
                                                                                       §§push(2);
                                                                                       if(_loc13_ || Boolean(param1))
                                                                                       {
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§push(3);
                                                                                    }
                                                                                 }
                                                                                 addr0230:
                                                                                 switch(§§pop())
                                                                                 {
                                                                                    case 0:
                                                                                       TweenMax.to(_loc9_,0.1,{"tint":16711680});
                                                                                       if(!(_loc14_ && Boolean(param2)))
                                                                                       {
                                                                                          addr0247:
                                                                                          FlexGlobals.topLevelApplication.stage.addChild(_loc9_);
                                                                                       }
                                                                                       break;
                                                                                    case 1:
                                                                                       TweenMax.to(_loc9_,0.1,{"tint":65280});
                                                                                       if(_loc13_)
                                                                                       {
                                                                                       }
                                                                                       §§goto(addr0247);
                                                                                    case 2:
                                                                                       TweenMax.to(_loc9_,0.1,{"tint":255});
                                                                                       if(_loc13_ || Boolean(param1))
                                                                                       {
                                                                                       }
                                                                                       §§goto(addr0247);
                                                                                    default:
                                                                                       §§goto(addr0247);
                                                                                 }
                                                                                 addr0258:
                                                                                 if(!this._usableTiles[param3])
                                                                                 {
                                                                                    if(_loc13_)
                                                                                    {
                                                                                       this._usableTiles[param3] = new Vector.<IntPoint>();
                                                                                       if(_loc13_)
                                                                                       {
                                                                                          addr0282:
                                                                                          if(!this._usableTiles[Terrain.TYPE_ALL_TERRAINS])
                                                                                          {
                                                                                             if(_loc13_)
                                                                                             {
                                                                                                this._usableTiles[Terrain.TYPE_ALL_TERRAINS] = new Vector.<IntPoint>();
                                                                                                if(_loc13_)
                                                                                                {
                                                                                                   addr02c2:
                                                                                                   §§push(0);
                                                                                                   if(_loc13_)
                                                                                                   {
                                                                                                      _loc6_ = §§pop();
                                                                                                      if(!_loc14_)
                                                                                                      {
                                                                                                         loop3:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc6_);
                                                                                                            if(!_loc14_)
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(§§pop() >= this._usableTiles[param3].length)
                                                                                                                  {
                                                                                                                     if(!(_loc14_ && Boolean(this)))
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     addr0472:
                                                                                                                     this._usableTiles[Terrain.TYPE_ALL_TERRAINS].splice(_loc5_,1);
                                                                                                                     if(_loc13_)
                                                                                                                     {
                                                                                                                        addr048d:
                                                                                                                        AStarTile(this.map[param1][param2]).addType(param3);
                                                                                                                        if(_loc13_)
                                                                                                                        {
                                                                                                                           §§goto(addr04ac);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr04b4);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§push(_loc4_.x);
                                                                                                                     if(_loc14_ && Boolean(param1))
                                                                                                                     {
                                                                                                                        continue;
                                                                                                                     }
                                                                                                                     §§push(§§pop() == this._usableTiles[param3][_loc6_].x);
                                                                                                                     if(_loc13_ || Boolean(this))
                                                                                                                     {
                                                                                                                        var _temp_35:* = §§pop();
                                                                                                                        §§push(_temp_35);
                                                                                                                        if(_temp_35)
                                                                                                                        {
                                                                                                                           if(!_loc14_)
                                                                                                                           {
                                                                                                                              addr0314:
                                                                                                                              §§pop();
                                                                                                                              if(!_loc14_)
                                                                                                                              {
                                                                                                                                 loop0:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc4_.y);
                                                                                                                                    if(_loc14_)
                                                                                                                                    {
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    §§push(§§pop() == this._usableTiles[param3][_loc6_].y);
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(§§pop())
                                                                                                                                       {
                                                                                                                                          if(!_loc14_)
                                                                                                                                          {
                                                                                                                                             addr0341:
                                                                                                                                             §§push(_loc6_);
                                                                                                                                             if(_loc14_)
                                                                                                                                             {
                                                                                                                                                break loop0;
                                                                                                                                             }
                                                                                                                                             §§push(§§pop());
                                                                                                                                             if(!_loc14_)
                                                                                                                                             {
                                                                                                                                                break loop0;
                                                                                                                                             }
                                                                                                                                             §§push(-1);
                                                                                                                                             if(!(_loc14_ && Boolean(this)))
                                                                                                                                             {
                                                                                                                                                if(§§pop() == §§pop())
                                                                                                                                                {
                                                                                                                                                   if(!_loc14_)
                                                                                                                                                   {
                                                                                                                                                      addr03cd:
                                                                                                                                                      this._usableTiles[param3].push(_loc4_);
                                                                                                                                                      if(_loc13_)
                                                                                                                                                      {
                                                                                                                                                         §§push(param3);
                                                                                                                                                         if(!_loc14_)
                                                                                                                                                         {
                                                                                                                                                            addr03e9:
                                                                                                                                                            §§push(Terrain.TYPE_ALL_TERRAINS);
                                                                                                                                                            if(_loc13_)
                                                                                                                                                            {
                                                                                                                                                               if(§§pop() != §§pop())
                                                                                                                                                               {
                                                                                                                                                                  if(_loc13_ || Boolean(param2))
                                                                                                                                                                  {
                                                                                                                                                                     addr0407:
                                                                                                                                                                     this._usableTiles[Terrain.TYPE_ALL_TERRAINS].push(_loc4_);
                                                                                                                                                                     if(_loc14_ && Boolean(this))
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr0472);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr048d);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr04b4);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               addr0460:
                                                                                                                                                               if(§§pop() != §§pop())
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc14_ && Boolean(this)))
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr0472);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr048d);
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            addr045a:
                                                                                                                                                            §§push(Terrain.TYPE_ALL_TERRAINS);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr0460);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr0407);
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      addr043b:
                                                                                                                                                      this._usableTiles[param3].splice(_loc5_,1);
                                                                                                                                                      if(_loc13_ || Boolean(this))
                                                                                                                                                      {
                                                                                                                                                         addr0459:
                                                                                                                                                         §§goto(addr045a);
                                                                                                                                                         §§push(param3);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr0472);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                addr0431:
                                                                                                                                                if(§§pop() != §§pop())
                                                                                                                                                {
                                                                                                                                                   if(!_loc14_)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr043b);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr04b4);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr048d);
                                                                                                                                          }
                                                                                                                                          addr04ac:
                                                                                                                                          if(this._debugFields)
                                                                                                                                          {
                                                                                                                                             addr04b4:
                                                                                                                                             _loc9_ = this._debugFields[param3];
                                                                                                                                             if(_loc9_)
                                                                                                                                             {
                                                                                                                                                _loc10_ = new Sprite();
                                                                                                                                                _loc10_.name = "cell" + param1 + "_" + param2;
                                                                                                                                                if(!_loc14_)
                                                                                                                                                {
                                                                                                                                                   _loc10_.x = param1 * 10;
                                                                                                                                                   if(_loc13_ || Boolean(param3))
                                                                                                                                                   {
                                                                                                                                                      _loc10_.y = param2 * 10;
                                                                                                                                                      if(_loc13_ || Boolean(param2))
                                                                                                                                                      {
                                                                                                                                                         _loc10_.graphics.beginFill(0,1);
                                                                                                                                                         if(!_loc14_)
                                                                                                                                                         {
                                                                                                                                                            _loc10_.graphics.drawRect(0,0,10,10);
                                                                                                                                                            if(!(_loc14_ && Boolean(param1)))
                                                                                                                                                            {
                                                                                                                                                               addr054b:
                                                                                                                                                               _loc10_.graphics.endFill();
                                                                                                                                                               if(!(_loc14_ && Boolean(param3)))
                                                                                                                                                               {
                                                                                                                                                                  addr0562:
                                                                                                                                                                  _loc9_.addChild(_loc10_);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr056a);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr0562);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr056a);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr054b);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr056a);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          _loc6_++;
                                                                                                                                          if(!_loc14_)
                                                                                                                                          {
                                                                                                                                             continue loop3;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr048d);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 addr0350:
                                                                                                                                 _loc5_ = §§pop();
                                                                                                                                 if(_loc14_)
                                                                                                                                 {
                                                                                                                                 }
                                                                                                                                 break;
                                                                                                                                 addr031b:
                                                                                                                              }
                                                                                                                              §§goto(addr0341);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr0337);
                                                                                                                     }
                                                                                                                     §§goto(addr0314);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§push(param3);
                                                                                                               if(!(_loc14_ && Boolean(this)))
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     if(_loc13_)
                                                                                                                     {
                                                                                                                        §§push(_loc5_);
                                                                                                                        if(!(_loc14_ && Boolean(param2)))
                                                                                                                        {
                                                                                                                           §§goto(addr03b3);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           addr042f:
                                                                                                                           §§push(-1);
                                                                                                                        }
                                                                                                                        §§goto(addr0431);
                                                                                                                     }
                                                                                                                     §§goto(addr0459);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§push(_loc5_);
                                                                                                                  }
                                                                                                                  §§goto(addr042f);
                                                                                                               }
                                                                                                               §§goto(addr03e9);
                                                                                                            }
                                                                                                            §§goto(addr042f);
                                                                                                         }
                                                                                                         addr0364:
                                                                                                      }
                                                                                                      §§goto(addr048d);
                                                                                                   }
                                                                                                   §§goto(addr0350);
                                                                                                }
                                                                                                §§goto(addr048d);
                                                                                             }
                                                                                             §§goto(addr04b4);
                                                                                          }
                                                                                          §§goto(addr02c2);
                                                                                       }
                                                                                       §§goto(addr031b);
                                                                                    }
                                                                                    §§goto(addr03cd);
                                                                                 }
                                                                                 §§goto(addr0282);
                                                                                 addr022e:
                                                                              }
                                                                              §§goto(addr020e);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push(0);
                                                                              if(_loc13_)
                                                                              {
                                                                                 §§goto(addr0208);
                                                                              }
                                                                           }
                                                                           §§goto(addr022e);
                                                                        }
                                                                        §§goto(addr020a);
                                                                     }
                                                                     §§goto(addr022e);
                                                                  }
                                                                  §§goto(addr01f4);
                                                               }
                                                               else
                                                               {
                                                                  §§push(2);
                                                                  if(!_loc14_)
                                                                  {
                                                                     §§goto(addr01d2);
                                                                  }
                                                               }
                                                               §§goto(addr022e);
                                                            }
                                                            §§goto(addr01e2);
                                                         }
                                                         §§goto(addr01d2);
                                                      }
                                                      §§goto(addr020e);
                                                   }
                                                   §§goto(addr0230);
                                                }
                                                §§goto(addr0247);
                                             }
                                             §§goto(addr0184);
                                          }
                                          §§goto(addr0364);
                                       }
                                       §§goto(addr00b0);
                                    }
                                    §§goto(addr0258);
                                 }
                                 §§goto(addr00b0);
                              }
                              §§goto(addr0258);
                           }
                           §§goto(addr008c);
                        }
                        §§goto(addr0258);
                     }
                     §§goto(addr008c);
                  }
                  §§goto(addr00b2);
               }
               §§goto(addr008c);
            }
            addr056a:
            return;
         }
         §§goto(addr0047);
      }
      
      public function setUnuseable(param1:int, param2:int, param3:String) : void
      {
         §§push(false);
         var _loc13_:Boolean = true;
         var _loc14_:* = §§pop();
         var _loc4_:IntPoint = null;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:Sprite = null;
         var _loc9_:Sprite = null;
         var _loc10_:String = null;
         if(!_loc14_)
         {
            if(!this.isOutOfBounds(param1,param2))
            {
               addr0045:
               _loc4_ = new IntPoint(param1,param2);
               if(_loc13_ || Boolean(param3))
               {
                  §§push(-1);
                  if(_loc13_)
                  {
                     _loc5_ = §§pop();
                     if(_loc13_)
                     {
                        if(param3)
                        {
                           if(!_loc14_)
                           {
                              addr007c:
                              if(!this._usableTiles[param3])
                              {
                                 if(!_loc14_)
                                 {
                                    this._usableTiles[param3] = new Vector.<IntPoint>();
                                    if(!_loc14_)
                                    {
                                       addr00a6:
                                       if(this._debugFields)
                                       {
                                          if(_loc13_)
                                          {
                                             addr00b4:
                                             if(!this._debugFields[param3])
                                             {
                                                if(!_loc14_)
                                                {
                                                   addr00c6:
                                                   addr00d2:
                                                   §§push(0);
                                                   if(_loc13_)
                                                   {
                                                      _loc7_ = §§pop();
                                                      addr00d0:
                                                      §§push(0);
                                                   }
                                                   for each(_loc8_ in this._debugFields)
                                                   {
                                                      if(_loc13_ || Boolean(param2))
                                                      {
                                                         _loc7_++;
                                                      }
                                                   }
                                                   if(!_loc14_)
                                                   {
                                                      _loc9_ = new Sprite();
                                                      _loc9_.x = _loc7_ * this.width * 10;
                                                      if(_loc13_)
                                                      {
                                                         this._debugFields[param3] = _loc9_;
                                                         if(!(_loc14_ && Boolean(this)))
                                                         {
                                                            §§push(_loc7_);
                                                            if(!(_loc14_ && Boolean(param3)))
                                                            {
                                                               var _loc11_:* = §§pop();
                                                               if(_loc13_)
                                                               {
                                                                  §§push(1);
                                                                  if(!(_loc14_ && Boolean(this)))
                                                                  {
                                                                     §§push(_loc11_);
                                                                     if(!_loc14_)
                                                                     {
                                                                        if(§§pop() === §§pop())
                                                                        {
                                                                           if(_loc13_)
                                                                           {
                                                                              §§push(0);
                                                                              if(!_loc13_)
                                                                              {
                                                                                 addr01ed:
                                                                                 addr01ef:
                                                                                 if(§§pop() === _loc11_)
                                                                                 {
                                                                                    addr01f3:
                                                                                    §§push(1);
                                                                                    if(_loc14_)
                                                                                    {
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§push(2);
                                                                                 }
                                                                              }
                                                                              addr020d:
                                                                              switch(§§pop())
                                                                              {
                                                                                 case 0:
                                                                                    TweenMax.to(_loc9_,0.1,{"tint":16711680});
                                                                                    if(_loc13_)
                                                                                    {
                                                                                    }
                                                                                    FlexGlobals.topLevelApplication.stage.addChild(_loc9_);
                                                                                    addr0229:
                                                                                    break;
                                                                                 case 1:
                                                                                    TweenMax.to(_loc9_,0.1,{"tint":65280});
                                                                                    if(_loc13_ || Boolean(param1))
                                                                                    {
                                                                                    }
                                                                                    §§goto(addr0229);
                                                                                 default:
                                                                                    TweenMax.to(_loc9_,0.1,{"tint":255});
                                                                                    if(!_loc13_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    §§goto(addr0229);
                                                                              }
                                                                              addr0246:
                                                                              if(!this._usableTiles[Terrain.TYPE_ALL_TERRAINS])
                                                                              {
                                                                                 if(!(_loc14_ && Boolean(param3)))
                                                                                 {
                                                                                    this._usableTiles[Terrain.TYPE_ALL_TERRAINS] = new Vector.<IntPoint>();
                                                                                    if(!_loc14_)
                                                                                    {
                                                                                       addr0282:
                                                                                       §§push(0);
                                                                                       if(!(_loc14_ && Boolean(param2)))
                                                                                       {
                                                                                          _loc6_ = §§pop();
                                                                                          if(!_loc14_)
                                                                                          {
                                                                                             loop0:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc6_);
                                                                                                if(_loc14_ && Boolean(param3))
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   if(§§pop() >= this._usableTiles[param3].length)
                                                                                                   {
                                                                                                      if(!_loc14_)
                                                                                                      {
                                                                                                         addr0372:
                                                                                                         §§push(param3);
                                                                                                         if(_loc13_ || Boolean(param1))
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               §§goto(addr0412);
                                                                                                            }
                                                                                                            addr03eb:
                                                                                                            AStarTile(this.map[param1][param2]).removeType(param3);
                                                                                                            if(!_loc14_)
                                                                                                            {
                                                                                                               §§goto(addr040a);
                                                                                                            }
                                                                                                            §§goto(addr0412);
                                                                                                         }
                                                                                                         addr03b8:
                                                                                                         if(§§pop() != Terrain.TYPE_ALL_TERRAINS)
                                                                                                         {
                                                                                                            if(!(_loc14_ && Boolean(param3)))
                                                                                                            {
                                                                                                               §§goto(addr03d0);
                                                                                                            }
                                                                                                            §§goto(addr0412);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr03eb);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§push(_loc4_.x);
                                                                                                      if(_loc14_ && Boolean(param3))
                                                                                                      {
                                                                                                         continue;
                                                                                                      }
                                                                                                      §§push(§§pop() == this._usableTiles[param3][_loc6_].x);
                                                                                                      if(_loc13_)
                                                                                                      {
                                                                                                         var _temp_18:* = §§pop();
                                                                                                         §§push(_temp_18);
                                                                                                         if(_temp_18)
                                                                                                         {
                                                                                                            if(_loc13_ || Boolean(this))
                                                                                                            {
                                                                                                               §§pop();
                                                                                                               if(!(_loc14_ && Boolean(param3)))
                                                                                                               {
                                                                                                                  §§push(_loc4_.y);
                                                                                                                  if(!_loc13_)
                                                                                                                  {
                                                                                                                     break loop0;
                                                                                                                  }
                                                                                                                  addr0307:
                                                                                                                  if(§§pop() == this._usableTiles[param3][_loc6_].y)
                                                                                                                  {
                                                                                                                     if(!(_loc14_ && Boolean(this)))
                                                                                                                     {
                                                                                                                        §§push(_loc6_);
                                                                                                                        if(_loc13_)
                                                                                                                        {
                                                                                                                           §§push(§§pop());
                                                                                                                           if(_loc14_ && Boolean(param3))
                                                                                                                           {
                                                                                                                              continue;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        _loc5_ = §§pop();
                                                                                                                        if(_loc13_ || Boolean(param3))
                                                                                                                        {
                                                                                                                           §§goto(addr0372);
                                                                                                                        }
                                                                                                                        §§goto(addr03eb);
                                                                                                                     }
                                                                                                                     addr0399:
                                                                                                                     this._usableTiles[param3].splice(_loc5_,1);
                                                                                                                     if(!(_loc14_ && Boolean(param2)))
                                                                                                                     {
                                                                                                                        addr03b7:
                                                                                                                        §§goto(addr03b8);
                                                                                                                        §§push(param3);
                                                                                                                     }
                                                                                                                     §§goto(addr0412);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     _loc6_++;
                                                                                                                     if(!_loc14_)
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr03b7);
                                                                                                               }
                                                                                                               §§goto(addr03d0);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr0307);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             addr038d:
                                                                                             if(§§pop() != -1)
                                                                                             {
                                                                                                if(!_loc14_)
                                                                                                {
                                                                                                   §§goto(addr0399);
                                                                                                }
                                                                                                §§goto(addr0412);
                                                                                             }
                                                                                             §§goto(addr03eb);
                                                                                          }
                                                                                          addr03d0:
                                                                                          this._usableTiles[Terrain.TYPE_ALL_TERRAINS].splice(_loc5_,1);
                                                                                          if(_loc13_)
                                                                                          {
                                                                                             §§goto(addr03eb);
                                                                                          }
                                                                                          §§goto(addr040a);
                                                                                       }
                                                                                       §§goto(addr038d);
                                                                                    }
                                                                                    §§goto(addr038b);
                                                                                 }
                                                                                 addr040a:
                                                                                 if(this._debugFields)
                                                                                 {
                                                                                    addr0412:
                                                                                    if(_loc13_)
                                                                                    {
                                                                                       addr038b:
                                                                                       §§push(_loc5_);
                                                                                       break loop0;
                                                                                    }
                                                                                    _loc9_ = this._debugFields[param3];
                                                                                    if(_loc9_)
                                                                                    {
                                                                                       if(!_loc14_)
                                                                                       {
                                                                                          §§push("cell");
                                                                                          if(_loc13_ || Boolean(param3))
                                                                                          {
                                                                                             §§push(param1);
                                                                                             if(!_loc14_)
                                                                                             {
                                                                                                §§push(§§pop() + §§pop());
                                                                                                if(!(_loc14_ && Boolean(param3)))
                                                                                                {
                                                                                                   §§push(§§pop() + "_");
                                                                                                   if(_loc13_ || Boolean(param1))
                                                                                                   {
                                                                                                      addr0473:
                                                                                                      addr0472:
                                                                                                      §§push(§§pop() + param2);
                                                                                                   }
                                                                                                }
                                                                                                _loc10_ = §§pop();
                                                                                                if(!_loc14_)
                                                                                                {
                                                                                                   _loc9_.removeChild(_loc9_.getChildByName(_loc10_));
                                                                                                }
                                                                                                §§goto(addr048b);
                                                                                             }
                                                                                             §§goto(addr0473);
                                                                                          }
                                                                                          §§goto(addr0472);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr048b);
                                                                              }
                                                                              §§goto(addr0282);
                                                                              addr020b:
                                                                           }
                                                                           §§goto(addr01f3);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(2);
                                                                           if(!_loc14_)
                                                                           {
                                                                              §§goto(addr01ed);
                                                                           }
                                                                        }
                                                                        §§goto(addr020b);
                                                                     }
                                                                     §§goto(addr01ef);
                                                                  }
                                                                  §§goto(addr020b);
                                                               }
                                                               §§goto(addr01f3);
                                                            }
                                                            §§goto(addr020d);
                                                         }
                                                      }
                                                      §§goto(addr0246);
                                                   }
                                                   §§goto(addr0372);
                                                }
                                                §§goto(addr00d0);
                                             }
                                             §§goto(addr0246);
                                          }
                                          §§goto(addr00c6);
                                       }
                                       §§goto(addr0246);
                                    }
                                    §§goto(addr00c6);
                                 }
                                 §§goto(addr00b4);
                              }
                              §§goto(addr00a6);
                           }
                           §§goto(addr00c6);
                        }
                        §§goto(addr00a6);
                     }
                     §§goto(addr00d0);
                  }
                  §§goto(addr00d2);
               }
               §§goto(addr007c);
            }
            addr048b:
            return;
         }
         §§goto(addr0045);
      }
      
      public function isUseable(param1:int, param2:int, param3:String) : Boolean
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(!(_loc4_ && Boolean(param1)))
         {
            §§push(this.isOutOfBounds(param1,param2));
            if(!(_loc4_ && Boolean(param3)))
            {
               if(!§§pop())
               {
                  if(_loc5_)
                  {
                     §§push(AStarTile(this.map[param1][param2]).getUsable(param3));
                     if(_loc5_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr007e:
                     §§push(false);
                  }
                  §§goto(addr007f);
               }
               §§goto(addr007e);
            }
            addr007f:
            return §§pop();
         }
         §§goto(addr007e);
      }
      
      public function isOutOfBounds(param1:int, param2:int) : Boolean
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_ || _loc3_)
         {
            §§push(param1);
            if(!(_loc3_ && Boolean(param2)))
            {
               §§push(0);
               if(!_loc3_)
               {
                  §§push(§§pop() < §§pop());
                  if(_loc4_ || Boolean(param1))
                  {
                     var _temp_5:* = §§pop();
                     §§push(_temp_5);
                     §§push(_temp_5);
                     if(!_loc3_)
                     {
                        if(!§§pop())
                        {
                           if(!_loc3_)
                           {
                              §§pop();
                              if(!_loc3_)
                              {
                                 §§push(param1);
                                 if(_loc4_)
                                 {
                                    addr0062:
                                    §§push(this.width);
                                    if(!(_loc3_ && Boolean(param2)))
                                    {
                                       §§push(§§pop() - 1);
                                       if(_loc4_ || Boolean(param2))
                                       {
                                          §§push(§§pop() > §§pop());
                                          if(!_loc3_)
                                          {
                                             addr0093:
                                             var _temp_8:* = §§pop();
                                             §§push(_temp_8);
                                             §§push(_temp_8);
                                             if(_loc4_)
                                             {
                                                addr009a:
                                                if(!§§pop())
                                                {
                                                   if(_loc4_ || Boolean(param2))
                                                   {
                                                      addr00ac:
                                                      §§pop();
                                                      if(_loc4_)
                                                      {
                                                         §§push(param2);
                                                         if(_loc4_)
                                                         {
                                                            §§push(0);
                                                            if(!_loc3_)
                                                            {
                                                               addr00c1:
                                                               §§push(§§pop() < §§pop());
                                                               if(!_loc3_)
                                                               {
                                                                  addr00c7:
                                                                  var _temp_10:* = §§pop();
                                                                  addr00c8:
                                                                  §§push(_temp_10);
                                                                  if(!_temp_10)
                                                                  {
                                                                     if(_loc4_)
                                                                     {
                                                                        §§pop();
                                                                        if(_loc4_)
                                                                        {
                                                                           §§goto(addr00ec);
                                                                        }
                                                                        §§goto(addr00fd);
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr00f4);
                                                            }
                                                            addr00ec:
                                                            §§goto(addr00e8);
                                                         }
                                                         addr00e8:
                                                         §§goto(addr00ed);
                                                      }
                                                      §§goto(addr010c);
                                                   }
                                                   §§goto(addr00f4);
                                                }
                                                §§goto(addr00c7);
                                             }
                                             §§goto(addr00c8);
                                          }
                                          §§goto(addr00f4);
                                       }
                                       addr00ed:
                                       §§push(param2 > this.height - 1);
                                       if(_loc4_)
                                       {
                                          addr00f4:
                                          if(§§pop())
                                          {
                                             if(!_loc3_)
                                             {
                                                addr00fd:
                                                §§push(true);
                                                if(!(_loc3_ && _loc3_))
                                                {
                                                   return §§pop();
                                                }
                                             }
                                             else
                                             {
                                                addr010c:
                                                §§push(false);
                                             }
                                             §§goto(addr010d);
                                          }
                                          §§goto(addr010c);
                                       }
                                       addr010d:
                                       return §§pop();
                                    }
                                    §§goto(addr00c1);
                                 }
                                 §§goto(addr00e8);
                              }
                              §§goto(addr00fd);
                           }
                           §§goto(addr00f4);
                        }
                        §§goto(addr0093);
                     }
                     §§goto(addr009a);
                  }
                  §§goto(addr00ac);
               }
               §§goto(addr00ec);
            }
            §§goto(addr0062);
         }
         §§goto(addr010c);
      }
      
      public function get usableTiles() : Dictionary
      {
         return this._usableTiles;
      }
      
      public function setAllTilesUnusable() : void
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc1_:Sprite = null;
         var _loc3_:Vector.<IntPoint> = null;
         var _loc4_:* = 0;
         for each(_loc1_ in this._debugFields)
         {
            if(_loc8_)
            {
               RandomUtilities.cleanRemoveChild(_loc1_);
            }
         }
         if(!(_loc7_ && Boolean(this)))
         {
            if(this._debugTerrains)
            {
               if(_loc8_ || _loc2_)
               {
                  addr0079:
                  this._debugFields = new Dictionary();
               }
            }
            var _loc2_:int = 0;
            if(!_loc7_)
            {
               loop1:
               while(true)
               {
                  §§push(_loc2_);
                  if(_loc8_)
                  {
                     loop2:
                     while(true)
                     {
                        §§push(this.width);
                        loop3:
                        while(true)
                        {
                           if(§§pop() >= §§pop())
                           {
                              if(!(_loc7_ && Boolean(_loc3_)))
                              {
                                 break;
                              }
                              §§goto(addr01cb);
                           }
                           §§push(0);
                           if(!_loc8_)
                           {
                              continue loop2;
                           }
                           _loc4_ = §§pop();
                           if(_loc8_ || Boolean(_loc3_))
                           {
                              loop7:
                              while(true)
                              {
                                 §§push(_loc4_);
                                 if(_loc7_ && Boolean(this))
                                 {
                                    continue loop2;
                                 }
                                 §§push(this.height);
                                 if(!(_loc8_ || Boolean(_loc2_)))
                                 {
                                    continue loop3;
                                 }
                                 if(§§pop() < §§pop())
                                 {
                                    if(this.map[_loc2_][_loc4_] is AStarTile)
                                    {
                                       if(_loc7_)
                                       {
                                          break;
                                       }
                                       AStarTile(this.map[_loc2_][_loc4_]).cleanTile();
                                       if(!(_loc8_ || Boolean(_loc3_)))
                                       {
                                          addr0139:
                                          _loc2_++;
                                          if(_loc7_ && Boolean(_loc2_))
                                          {
                                             break;
                                          }
                                          continue loop1;
                                       }
                                    }
                                    while(true)
                                    {
                                       _loc4_++;
                                       if(_loc7_ && Boolean(_loc2_))
                                       {
                                          break;
                                       }
                                       continue loop7;
                                    }
                                    continue loop1;
                                    addr00fd:
                                 }
                                 if(_loc7_)
                                 {
                                    continue loop1;
                                 }
                                 §§goto(addr0139);
                              }
                              break;
                              addr010d:
                           }
                           §§goto(addr00fd);
                        }
                        break;
                     }
                     §§push(0);
                  }
                  break;
               }
               var _loc5_:* = §§pop();
               if(!_loc7_)
               {
                  for each(_loc3_ in this._usableTiles)
                  {
                     if(_loc8_ || Boolean(this))
                     {
                        while(_loc3_.length > 0)
                        {
                           _loc3_.pop();
                           if(_loc7_ && Boolean(_loc1_))
                           {
                              break;
                           }
                        }
                     }
                  }
               }
               addr01cb:
               return;
            }
            §§goto(addr010d);
         }
         §§goto(addr0079);
      }
   }
}

