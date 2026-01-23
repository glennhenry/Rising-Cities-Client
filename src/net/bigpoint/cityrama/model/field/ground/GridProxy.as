package net.bigpoint.cityrama.model.field.ground
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.common.Cuboid;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldProxy;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class GridProxy extends Proxy
   {
      
      public static const NAME:String = "GridProxy";
      
      public static const MODE_SINGLE_SELECTION:String = "MODE_SINGLE_SELECTION";
      
      public static const STATUS_DEFINE_STARTPOINT:String = "STATUS_DEFINE_STARTPOINT";
      
      public static const STATUS_DEFINE_ENDPOINT:String = "STATUS_DEFINE_ENDPOINT";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!(_loc2_ && _loc2_))
      {
         NAME = "GridProxy";
         if(_loc1_)
         {
            MODE_SINGLE_SELECTION = "MODE_SINGLE_SELECTION";
            if(!(_loc2_ && GridProxy))
            {
               STATUS_DEFINE_STARTPOINT = "STATUS_DEFINE_STARTPOINT";
               if(!(_loc2_ && _loc2_))
               {
                  addr0069:
                  STATUS_DEFINE_ENDPOINT = "STATUS_DEFINE_ENDPOINT";
               }
            }
            return;
         }
      }
      §§goto(addr0069);
      
      private var _overrideStreets:Boolean;
      
      private var _playfieldProxy:PlayfieldProxy;
      
      private var _playfieldObjetcsProxy:PlayfieldObjectsProxy;
      
      private var _selectedCuboid:Cuboid;
      
      private var _snapping:Boolean;
      
      private var _itemSizeX:int;
      
      private var _itemSizeY:int;
      
      private var _itemSizeZ:int;
      
      private var _itemStartCooX:int;
      
      private var _itemStartCooY:int;
      
      private var _mode:String;
      
      private var _status:String;
      
      private var _devGridVisiblity:Boolean = false;
      
      private var _itemGridVisiblity:Boolean = false;
      
      private var _selectedRectangleIsFree:Boolean = true;
      
      public function GridProxy(param1:String = null, param2:Object = null)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_)
         {
            super(param1,param2);
            if(_loc4_)
            {
               this._playfieldProxy = facade.retrieveProxy(PlayfieldProxy.NAME) as PlayfieldProxy;
               §§goto(addr0023);
            }
            §§goto(addr005a);
         }
         addr0023:
         if(_loc4_ || _loc3_)
         {
            addr005a:
            this._playfieldObjetcsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
            if(_loc4_ || _loc3_)
            {
               this._selectedCuboid = new Cuboid();
            }
         }
      }
      
      public function get selectedCuboid() : Cuboid
      {
         return this._selectedCuboid.clone() as Cuboid;
      }
      
      public function setItemSize(param1:int, param2:int, param3:int, param4:int) : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         if(!_loc7_)
         {
            §§push(this._selectedCuboid);
            if(!_loc7_)
            {
               var _loc5_:*;
               this._itemSizeX = _loc5_ = param1;
               if(_loc6_ || Boolean(param2))
               {
                  §§push(_loc5_);
                  if(!(_loc7_ && Boolean(this)))
                  {
                     if(!(_loc7_ && Boolean(param1)))
                     {
                        §§pop().width = §§pop();
                        if(_loc6_)
                        {
                           §§push(this._selectedCuboid);
                           if(_loc6_)
                           {
                              this._itemSizeY = _loc5_ = param2;
                              if(_loc6_)
                              {
                                 addr0088:
                                 §§push(_loc5_);
                                 if(!(_loc7_ && Boolean(this)))
                                 {
                                    addr0098:
                                    if(!_loc7_)
                                    {
                                       §§pop().height = §§pop();
                                       if(!(_loc7_ && Boolean(param1)))
                                       {
                                          §§push(this._selectedCuboid);
                                          if(_loc6_)
                                          {
                                             addr00ba:
                                             this._itemSizeZ = _loc5_ = param3;
                                             addr00c5:
                                             addr00c3:
                                             §§push(_loc5_);
                                             if(_loc6_ || Boolean(param2))
                                             {
                                                §§goto(addr00d5);
                                             }
                                             §§goto(addr00f9);
                                          }
                                          §§goto(addr00f7);
                                       }
                                       §§goto(addr011b);
                                    }
                                    §§goto(addr00f9);
                                 }
                                 §§goto(addr00c5);
                              }
                              §§goto(addr00c3);
                           }
                           §§goto(addr00ba);
                        }
                        §§goto(addr00f3);
                     }
                     addr00d5:
                     §§pop().depth = §§pop();
                     if(_loc6_ || Boolean(param2))
                     {
                        addr00f9:
                        this._selectedCuboid.z = param4;
                        addr00f7:
                        addr00f3:
                        if(_loc6_)
                        {
                           §§goto(addr0102);
                        }
                        §§goto(addr011b);
                     }
                     addr0102:
                     sendNotification(ApplicationNotificationConstants.GROUND_ITEM_GRID_RESIZE);
                     if(_loc6_ || Boolean(param3))
                     {
                        addr011b:
                        this.checkMatrix();
                     }
                     return;
                  }
                  §§goto(addr0098);
               }
               §§goto(addr0088);
            }
            §§goto(addr00ba);
         }
         §§goto(addr011b);
      }
      
      public function setPositionByMouse(param1:Number, param2:Number) : void
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc3_:* = int(Math.round(param1 - this._itemSizeX / 2));
         if(_loc7_)
         {
            §§push(int(Math.min(_loc3_,this._playfieldProxy.config.maxX - this._itemSizeX)));
            if(!(_loc6_ && Boolean(this)))
            {
               _loc3_ = §§pop();
               if(_loc7_)
               {
                  §§push(int(Math.max(_loc3_,0)));
                  if(_loc7_ || Boolean(this))
                  {
                     addr0070:
                     _loc3_ = §§pop();
                     addr0071:
                     §§push(int(Math.max(Math.round(param2 - this._itemSizeY / 2),0)));
                  }
                  var _loc4_:* = §§pop();
                  if(_loc7_)
                  {
                     §§push(int(Math.min(_loc4_,this._playfieldProxy.config.maxY - this._itemSizeY)));
                     if(_loc7_ || Boolean(param1))
                     {
                        _loc4_ = §§pop();
                        if(!_loc6_)
                        {
                           addr00d6:
                           _loc4_ = Math.max(_loc4_,0);
                           if(_loc7_)
                           {
                              addr00de:
                              if(this._mode == MODE_SINGLE_SELECTION)
                              {
                                 if(_loc7_ || Boolean(this))
                                 {
                                    addr00f7:
                                    §§push(this._selectedCuboid);
                                    if(_loc7_)
                                    {
                                       var _loc5_:*;
                                       this._itemStartCooX = _loc5_ = _loc3_;
                                       if(_loc7_)
                                       {
                                          §§push(_loc5_);
                                          if(_loc7_)
                                          {
                                             if(_loc7_ || Boolean(param2))
                                             {
                                                §§pop().x = §§pop();
                                                if(!_loc6_)
                                                {
                                                   addr0141:
                                                   §§push(this._selectedCuboid);
                                                   this._itemStartCooY = _loc5_ = _loc4_;
                                                   §§goto(addr014f);
                                                }
                                                §§goto(addr015f);
                                             }
                                             addr014f:
                                             §§pop().y = _loc5_;
                                             §§goto(addr014d);
                                          }
                                          addr014d:
                                          §§goto(addr014b);
                                       }
                                       addr014b:
                                       if(_loc7_ || Boolean(param1))
                                       {
                                          addr015f:
                                          this.checkMatrix();
                                       }
                                       return;
                                    }
                                    §§goto(addr0141);
                                 }
                              }
                              §§goto(addr015f);
                           }
                           §§goto(addr00f7);
                        }
                        §§goto(addr00de);
                     }
                     §§goto(addr00d6);
                  }
                  §§goto(addr00de);
               }
               §§goto(addr0071);
            }
            §§goto(addr0070);
         }
         §§goto(addr0071);
      }
      
      private function checkMatrix() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:* = false;
         if(_loc3_)
         {
            §§push(this._playfieldProxy.checkIfRectIsInUsablePlayfieldSize(this._selectedCuboid));
            if(!(_loc2_ && _loc2_))
            {
               if(!§§pop())
               {
                  if(_loc3_)
                  {
                     §§push(this._selectedRectangleIsFree);
                     if(_loc3_)
                     {
                        if(§§pop())
                        {
                           this._selectedRectangleIsFree = false;
                           if(_loc3_ || Boolean(this))
                           {
                              sendNotification(ApplicationNotificationConstants.GROUND_ITEM_STATE_CHANGED);
                              if(!_loc2_)
                              {
                                 §§goto(addr006a);
                              }
                              else
                              {
                                 addr0131:
                                 this._selectedRectangleIsFree = true;
                                 if(!(_loc2_ && _loc3_))
                                 {
                                    §§push(true);
                                    if(_loc3_)
                                    {
                                       addr0149:
                                       _loc1_ = §§pop();
                                       if(_loc2_ && _loc3_)
                                       {
                                          §§goto(addr01de);
                                       }
                                       §§goto(addr023d);
                                    }
                                    else
                                    {
                                       addr01b9:
                                       if(§§pop())
                                       {
                                          if(_loc3_)
                                          {
                                             §§push(this._selectedRectangleIsFree);
                                             if(_loc3_)
                                             {
                                                if(!§§pop())
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      §§goto(addr01d4);
                                                   }
                                                   §§goto(addr0247);
                                                }
                                                §§goto(addr023d);
                                             }
                                             §§goto(addr01e4);
                                          }
                                          §§goto(addr023d);
                                       }
                                       else
                                       {
                                          §§push(this._selectedRectangleIsFree);
                                          if(_loc3_)
                                          {
                                             §§goto(addr01ff);
                                          }
                                       }
                                    }
                                    §§goto(addr023e);
                                 }
                              }
                           }
                           §§goto(addr01de);
                        }
                        addr006a:
                        return;
                     }
                     addr00fa:
                     if(§§pop())
                     {
                        if(_loc3_ || _loc2_)
                        {
                           §§push(this._selectedRectangleIsFree);
                           if(!_loc2_)
                           {
                              if(!§§pop())
                              {
                                 if(_loc3_ || _loc3_)
                                 {
                                    §§goto(addr0131);
                                 }
                                 §§goto(addr0247);
                              }
                              §§goto(addr023d);
                           }
                           §§goto(addr023e);
                        }
                        §§goto(addr023d);
                     }
                     else
                     {
                        §§push(this._selectedRectangleIsFree);
                        if(!_loc2_)
                        {
                           §§goto(addr0164);
                        }
                     }
                     §§goto(addr023e);
                  }
                  §§goto(addr0187);
               }
               else
               {
                  §§push(this._selectedRectangleIsFree);
                  if(!_loc2_)
                  {
                     if(!§§pop())
                     {
                        if(_loc3_ || _loc3_)
                        {
                           this._selectedRectangleIsFree = true;
                           if(!(_loc2_ && _loc2_))
                           {
                              §§push(true);
                              if(!(_loc2_ && _loc1_))
                              {
                                 §§goto(addr00ae);
                              }
                              §§goto(addr0149);
                           }
                           addr0208:
                           this._selectedRectangleIsFree = false;
                           if(!_loc2_)
                           {
                              §§goto(addr0220);
                           }
                           else
                           {
                              §§goto(addr023d);
                           }
                        }
                        §§goto(addr0175);
                     }
                     §§goto(addr00b4);
                  }
               }
               §§goto(addr00fa);
            }
            addr00ae:
            _loc1_ = §§pop();
            if(_loc3_)
            {
               addr00b4:
               §§push(this._overrideStreets);
               if(!_loc2_)
               {
                  if(§§pop())
                  {
                     if(_loc3_)
                     {
                        §§push(this._playfieldObjetcsProxy);
                        if(_loc3_ || _loc3_)
                        {
                           §§push(this._selectedCuboid);
                           if(!(_loc2_ && Boolean(this)))
                           {
                              §§push(§§pop().objectAtIsPlaneObjOrFree(§§pop()));
                              if(_loc3_ || _loc2_)
                              {
                                 §§goto(addr00fa);
                              }
                              §§goto(addr01ff);
                           }
                           else
                           {
                              addr01b0:
                              §§push(§§pop().isFree(§§pop()));
                              if(!_loc2_)
                              {
                                 §§goto(addr01b9);
                              }
                           }
                           §§goto(addr01e4);
                        }
                        else
                        {
                           addr01ac:
                           §§push(this._selectedCuboid);
                        }
                        §§goto(addr01b0);
                     }
                     §§goto(addr023d);
                  }
                  else
                  {
                     §§push(this._playfieldObjetcsProxy);
                  }
                  §§goto(addr01ac);
               }
               addr0164:
               if(§§pop())
               {
                  if(_loc3_ || _loc2_)
                  {
                     addr0175:
                     this._selectedRectangleIsFree = false;
                     if(_loc3_ || _loc2_)
                     {
                        addr0187:
                        sendNotification(ApplicationNotificationConstants.GROUND_ITEM_STATE_CHANGED);
                        if(_loc3_ || _loc2_)
                        {
                           §§goto(addr019e);
                        }
                     }
                     §§goto(addr023d);
                  }
                  §§goto(addr0187);
               }
               addr019e:
               return;
            }
            addr01d4:
            this._selectedRectangleIsFree = true;
            if(_loc3_)
            {
               addr01de:
               §§push(true);
               if(_loc3_)
               {
                  addr01e4:
                  _loc1_ = §§pop();
                  if(!(_loc2_ && Boolean(this)))
                  {
                     addr023d:
                     addr023e:
                     if(_loc1_)
                     {
                        if(!_loc2_)
                        {
                           addr0247:
                           sendNotification(ApplicationNotificationConstants.GROUND_ITEM_STATE_CHANGED);
                        }
                     }
                  }
                  else
                  {
                     addr0220:
                     sendNotification(ApplicationNotificationConstants.GROUND_ITEM_STATE_CHANGED);
                     if(_loc3_)
                     {
                        §§goto(addr022f);
                     }
                  }
                  addr0251:
                  return;
               }
               addr01ff:
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     §§goto(addr0208);
                  }
               }
               §§goto(addr022f);
            }
            addr022f:
            return;
         }
         §§goto(addr023d);
      }
      
      public function get tileGridVisiblity() : Boolean
      {
         return this._devGridVisiblity;
      }
      
      public function set tileGridVisiblity(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            this._devGridVisiblity = param1;
            if(_loc3_ || _loc3_)
            {
               addr003f:
               sendNotification(ApplicationNotificationConstants.GROUND_FIELD_GRID_VISIBILITY_CHANGED);
            }
            return;
         }
         §§goto(addr003f);
      }
      
      public function get itemGridVisiblity() : Boolean
      {
         return this._itemGridVisiblity;
      }
      
      public function set itemGridVisiblity(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            this._itemGridVisiblity = param1;
            if(_loc3_)
            {
               addr002a:
               sendNotification(ApplicationNotificationConstants.GROUND_ITEM_GRID_VISIBILITY_CHANGED);
            }
            return;
         }
         §§goto(addr002a);
      }
      
      public function get selectedRectangleIsFree() : Boolean
      {
         return this._selectedRectangleIsFree;
      }
      
      public function get mode() : String
      {
         return this._mode;
      }
      
      public function set mode(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._mode = param1;
         }
      }
      
      public function get status() : String
      {
         return this._status;
      }
      
      public function set status(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            this._status = param1;
         }
      }
      
      public function get mouseX() : int
      {
         return this._itemStartCooX;
      }
      
      public function get mouseY() : int
      {
         return this._itemStartCooY;
      }
      
      public function get itemSizeX() : int
      {
         return this._itemSizeX;
      }
      
      public function get itemSizeY() : int
      {
         return this._itemSizeY;
      }
      
      public function set snapping(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            this._snapping = param1;
         }
      }
      
      public function set overrideStreets(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._overrideStreets = param1;
         }
      }
   }
}

