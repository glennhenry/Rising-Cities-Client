package as3isolib.display.renderers
{
   import as3isolib.core.IsoDisplayObject;
   import as3isolib.core.as3isolib_internal;
   import as3isolib.display.scene.IIsoScene;
   import flash.utils.Dictionary;
   import flash.utils.getTimer;
   
   use namespace as3isolib_internal;
   
   public class DefaultSceneLayoutRenderer implements ISceneLayoutRenderer
   {
      
      private var depth:uint;
      
      private var visited:Dictionary;
      
      private var scene:IIsoScene;
      
      private var dependency:Dictionary;
      
      private var collisionDetectionFunc:Function = null;
      
      public function DefaultSceneLayoutRenderer()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            this.visited = new Dictionary();
            if(!_loc2_)
            {
               addr0023:
               super();
            }
            return;
         }
         §§goto(addr0023);
      }
      
      public function renderScene(param1:IIsoScene) : void
      {
         var _temp_1:* = true;
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = _temp_1;
         var _loc6_:IsoDisplayObject = null;
         var _loc7_:Array = null;
         var _loc8_:IsoDisplayObject = null;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:* = 0;
         var _loc13_:IsoDisplayObject = null;
         if(!_loc16_)
         {
            this.scene = param1;
         }
         var _loc2_:uint = uint(getTimer());
         if(!_loc16_)
         {
            this.dependency = new Dictionary();
         }
         var _loc3_:Array = param1.displayListChildren;
         var _loc4_:uint = _loc3_.length;
         var _loc5_:uint = 0;
         loop0:
         while(_loc5_ < _loc4_)
         {
            _loc7_ = [];
            _loc8_ = _loc3_[_loc5_];
            §§push(_loc8_.x);
            if(!(_loc16_ && Boolean(_loc2_)))
            {
               §§push(_loc8_.width);
               if(_loc17_ || Boolean(param1))
               {
                  §§push(§§pop() + §§pop());
                  if(!_loc16_)
                  {
                     addr00b1:
                     §§push(§§pop());
                     if(!(_loc16_ && Boolean(this)))
                     {
                        addr00c0:
                        _loc9_ = §§pop();
                        if(!_loc16_)
                        {
                           §§push(_loc8_.y);
                           if(_loc17_)
                           {
                              §§push(_loc8_.length);
                              if(_loc17_)
                              {
                                 addr00dc:
                                 §§push(§§pop() + §§pop());
                                 if(!_loc16_)
                                 {
                                    §§push(§§pop());
                                    if(!_loc16_)
                                    {
                                       addr00ea:
                                       _loc10_ = §§pop();
                                       if(_loc16_ && Boolean(param1))
                                       {
                                          continue;
                                       }
                                       §§push(_loc8_.z);
                                       if(!_loc16_)
                                       {
                                          addr0109:
                                          §§push(§§pop() + _loc8_.height);
                                          if(!(_loc16_ && Boolean(_loc2_)))
                                          {
                                             addr0118:
                                             §§push(§§pop());
                                             if(!_loc16_)
                                             {
                                                addr011f:
                                                _loc11_ = §§pop();
                                                if(_loc17_ || Boolean(_loc3_))
                                                {
                                                   addr012f:
                                                   §§push(0);
                                                   if(!(_loc16_ && Boolean(_loc2_)))
                                                   {
                                                      _loc12_ = §§pop();
                                                      if(!(_loc16_ && Boolean(param1)))
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(_loc12_);
                                                            if(_loc16_)
                                                            {
                                                               break;
                                                            }
                                                            if(§§pop() >= _loc4_)
                                                            {
                                                               if(_loc16_ && Boolean(param1))
                                                               {
                                                                  continue loop0;
                                                               }
                                                            }
                                                            else
                                                            {
                                                               _loc13_ = _loc3_[_loc12_];
                                                               if(!_loc16_)
                                                               {
                                                                  §§push(this.collisionDetectionFunc);
                                                                  if(_loc17_)
                                                                  {
                                                                     §§push(null);
                                                                     if(_loc17_ || Boolean(_loc3_))
                                                                     {
                                                                        if(§§pop() != §§pop())
                                                                        {
                                                                           if(!_loc16_)
                                                                           {
                                                                              addr018e:
                                                                              this.collisionDetectionFunc.call(null,_loc8_,_loc13_);
                                                                              addr018d:
                                                                              addr0189:
                                                                              if(_loc17_)
                                                                              {
                                                                                 addr019d:
                                                                                 §§push(_loc13_.x);
                                                                                 if(_loc17_)
                                                                                 {
                                                                                    §§push(_loc9_);
                                                                                    if(_loc17_)
                                                                                    {
                                                                                       §§push(§§pop() < §§pop());
                                                                                       if(_loc17_ || Boolean(param1))
                                                                                       {
                                                                                          var _temp_14:* = §§pop();
                                                                                          §§push(_temp_14);
                                                                                          §§push(_temp_14);
                                                                                          if(_loc17_ || Boolean(_loc3_))
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                if(!(_loc16_ && Boolean(_loc3_)))
                                                                                                {
                                                                                                   §§pop();
                                                                                                   if(_loc17_ || Boolean(_loc3_))
                                                                                                   {
                                                                                                      §§push(_loc13_.y);
                                                                                                      if(!_loc16_)
                                                                                                      {
                                                                                                         addr0206:
                                                                                                         §§push(_loc10_);
                                                                                                         if(!(_loc16_ && Boolean(_loc2_)))
                                                                                                         {
                                                                                                            §§push(§§pop() < §§pop());
                                                                                                            if(_loc17_ || Boolean(this))
                                                                                                            {
                                                                                                               addr0225:
                                                                                                               var _temp_20:* = §§pop();
                                                                                                               §§push(_temp_20);
                                                                                                               §§push(_temp_20);
                                                                                                               if(!(_loc16_ && Boolean(this)))
                                                                                                               {
                                                                                                                  addr0234:
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     if(!_loc16_)
                                                                                                                     {
                                                                                                                        §§pop();
                                                                                                                        if(_loc17_)
                                                                                                                        {
                                                                                                                           §§push(_loc13_.z);
                                                                                                                           if(!(_loc16_ && Boolean(_loc2_)))
                                                                                                                           {
                                                                                                                              addr025a:
                                                                                                                              addr0258:
                                                                                                                              §§push(§§pop() < _loc11_);
                                                                                                                              if(!(_loc16_ && Boolean(this)))
                                                                                                                              {
                                                                                                                                 addr0269:
                                                                                                                                 var _temp_24:* = §§pop();
                                                                                                                                 addr026a:
                                                                                                                                 §§push(_temp_24);
                                                                                                                                 if(_temp_24)
                                                                                                                                 {
                                                                                                                                    if(!_loc16_)
                                                                                                                                    {
                                                                                                                                       addr0274:
                                                                                                                                       §§pop();
                                                                                                                                       if(!_loc16_)
                                                                                                                                       {
                                                                                                                                          addr027b:
                                                                                                                                          §§push(_loc5_);
                                                                                                                                          if(_loc17_)
                                                                                                                                          {
                                                                                                                                             addr028d:
                                                                                                                                             §§push(§§pop() === _loc12_);
                                                                                                                                             if(_loc17_)
                                                                                                                                             {
                                                                                                                                                §§push(!§§pop());
                                                                                                                                             }
                                                                                                                                             if(§§pop())
                                                                                                                                             {
                                                                                                                                                if(!_loc16_)
                                                                                                                                                {
                                                                                                                                                   addr0297:
                                                                                                                                                   _loc7_.push(_loc13_);
                                                                                                                                                   if(!(_loc17_ || Boolean(_loc3_)))
                                                                                                                                                   {
                                                                                                                                                      continue;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§push(_loc12_);
                                                                                                                                             if(!(_loc16_ && Boolean(_loc2_)))
                                                                                                                                             {
                                                                                                                                                addr02bd:
                                                                                                                                                §§push(uint(§§pop() + 1));
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          _loc12_ = §§pop();
                                                                                                                                          continue;
                                                                                                                                       }
                                                                                                                                       §§goto(addr0297);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr028d);
                                                                                                                           }
                                                                                                                           §§goto(addr02bd);
                                                                                                                        }
                                                                                                                        §§goto(addr0297);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr0269);
                                                                                                               }
                                                                                                               §§goto(addr026a);
                                                                                                            }
                                                                                                            §§goto(addr0274);
                                                                                                         }
                                                                                                         §§goto(addr025a);
                                                                                                      }
                                                                                                      §§goto(addr0258);
                                                                                                   }
                                                                                                   §§goto(addr0297);
                                                                                                }
                                                                                                §§goto(addr028d);
                                                                                             }
                                                                                             §§goto(addr0225);
                                                                                          }
                                                                                          §§goto(addr0234);
                                                                                       }
                                                                                       §§goto(addr028d);
                                                                                    }
                                                                                    §§goto(addr025a);
                                                                                 }
                                                                                 §§goto(addr0206);
                                                                              }
                                                                              §§goto(addr0297);
                                                                           }
                                                                           §§goto(addr027b);
                                                                        }
                                                                        §§goto(addr019d);
                                                                     }
                                                                     §§goto(addr018e);
                                                                  }
                                                                  §§goto(addr018d);
                                                               }
                                                               §§goto(addr0189);
                                                            }
                                                         }
                                                         addr02ff:
                                                         _loc5_ = §§pop() + 1;
                                                         addr02fd:
                                                         addr02fe:
                                                         continue;
                                                      }
                                                      this.dependency[_loc8_] = _loc7_;
                                                      if(_loc16_ && Boolean(this))
                                                      {
                                                         continue;
                                                      }
                                                      addr02f5:
                                                      §§push(_loc5_);
                                                      if(_loc17_)
                                                      {
                                                         §§goto(addr02fd);
                                                      }
                                                   }
                                                   §§goto(addr02ff);
                                                }
                                                §§goto(addr02f5);
                                             }
                                          }
                                       }
                                       §§goto(addr02fe);
                                    }
                                    §§goto(addr011f);
                                 }
                                 §§goto(addr0118);
                              }
                              §§goto(addr0109);
                           }
                           §§goto(addr00ea);
                        }
                        §§goto(addr012f);
                     }
                     §§goto(addr011f);
                  }
                  §§goto(addr00c0);
               }
               §§goto(addr00dc);
            }
            §§goto(addr00b1);
         }
         if(!(_loc16_ && Boolean(_loc2_)))
         {
            this.depth = 0;
            if(_loc17_)
            {
               §§goto(addr0323);
            }
            §§goto(addr0395);
         }
         addr0323:
         var _loc14_:int = 0;
         if(!_loc16_)
         {
            for each(_loc6_ in _loc3_)
            {
               if(_loc17_ || Boolean(this))
               {
                  if(true === this.visited[_loc6_])
                  {
                     continue;
                  }
                  if(_loc16_ && Boolean(param1))
                  {
                     continue;
                  }
               }
               this.place(_loc6_);
            }
         }
         if(_loc17_ || Boolean(_loc2_))
         {
            addr0395:
            this.visited = new Dictionary();
         }
      }
      
      private function place(param1:IsoDisplayObject) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:IsoDisplayObject = null;
         if(!(_loc5_ && _loc3_))
         {
            this.visited[param1] = true;
         }
         for each(_loc2_ in this.dependency[param1])
         {
            if(_loc6_)
            {
               if(true !== this.visited[_loc2_])
               {
                  if(_loc6_ || Boolean(param1))
                  {
                     this.place(_loc2_);
                  }
               }
            }
         }
         if(!(_loc5_ && Boolean(this)))
         {
            if(this.depth != param1.depth)
            {
               if(!(_loc5_ && Boolean(_loc2_)))
               {
                  this.scene.setChildIndex(param1,this.depth);
                  if(!_loc5_)
                  {
                     addr00d6:
                     var _loc3_:* = this;
                     var _loc4_:* = _loc3_.depth + 1;
                     if(!_loc5_)
                     {
                        _loc3_.depth = _loc4_;
                     }
                  }
                  §§goto(addr00ef);
               }
            }
            §§goto(addr00d6);
         }
         addr00ef:
      }
      
      public function get collisionDetection() : Function
      {
         return this.collisionDetectionFunc;
      }
      
      public function set collisionDetection(param1:Function) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this.collisionDetectionFunc = param1;
         }
      }
   }
}

