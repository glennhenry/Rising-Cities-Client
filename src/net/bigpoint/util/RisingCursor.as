package net.bigpoint.util
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.ui.Mouse;
   import flash.ui.MouseCursorData;
   import net.bigpoint.services.fileRuntimeLoadService.FileRuntimeLoadServiceDynamic;
   
   public class RisingCursor extends Bitmap
   {
      
      private var _libName:String;
      
      private var _assetName:String;
      
      private var _frameName:String;
      
      private var _cursorName:String;
      
      private var _cursorData:MouseCursorData;
      
      private var _customData:Vector.<BitmapData>;
      
      private var _isRegistered:Boolean;
      
      public function RisingCursor(param1:String, param2:String, param3:String, param4:String = null)
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         if(_loc6_ || Boolean(this))
         {
            this._cursorData = new MouseCursorData();
            if(_loc6_ || Boolean(param2))
            {
               this._customData = new Vector.<BitmapData>();
               if(!_loc5_)
               {
                  super();
                  if(_loc6_ || Boolean(param1))
                  {
                     addr006e:
                     this._assetName = param2;
                     if(_loc6_)
                     {
                        this._libName = param1;
                        if(_loc6_ || Boolean(param1))
                        {
                           this._frameName = param4;
                           if(_loc6_)
                           {
                              addr00a4:
                              this._cursorName = param3;
                              if(_loc6_ || Boolean(param2))
                              {
                                 this._isRegistered = false;
                                 if(!_loc5_)
                                 {
                                    addr00c3:
                                    this.init();
                                 }
                              }
                              §§goto(addr00c8);
                           }
                        }
                     }
                     §§goto(addr00c3);
                  }
                  addr00c8:
                  return;
               }
            }
            §§goto(addr006e);
         }
         §§goto(addr00a4);
      }
      
      private function registerCursor() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            this._customData[0] = this.bitmapData;
            if(_loc1_)
            {
               this._cursorData.hotSpot = new Point(0,0);
               if(_loc1_ || _loc2_)
               {
                  §§goto(addr0057);
               }
               §§goto(addr0078);
            }
            addr0057:
            this._cursorData.data = this._customData;
            if(!(_loc2_ && _loc1_))
            {
               addr0078:
               Mouse.registerCursor(this._cursorName,this._cursorData);
               if(!(_loc2_ && _loc1_))
               {
                  this._isRegistered = true;
               }
            }
            §§goto(addr009b);
         }
         addr009b:
      }
      
      private function init(param1:Event = null) : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc3_:Bitmap = null;
         var _loc4_:DisplayObject = null;
         var _loc5_:BitmapData = null;
         var _loc2_:FileRuntimeLoadServiceDynamic = FileRuntimeLoadServiceDynamic.getInstance();
         if(_loc6_)
         {
            if(!_loc2_.libAllReadyLoaded(this._libName))
            {
               if(_loc6_)
               {
                  _loc2_.addEventListener(this._assetName,this.init);
                  if(!(_loc7_ && Boolean(_loc2_)))
                  {
                     _loc2_.checkSWFArrayLoaded([this._libName],this._assetName);
                     if(_loc7_ && Boolean(this))
                     {
                        §§goto(addr00a6);
                     }
                  }
                  else
                  {
                     addr009e:
                     if(this._frameName)
                     {
                        addr00a6:
                        _loc3_ = _loc2_.getBitmap(this._assetName,this._frameName,true,true);
                        _loc4_ = _loc3_ as DisplayObject;
                        _loc5_ = new BitmapData(32,32,true,0);
                        _loc5_.lock();
                        if(_loc6_ || Boolean(_loc2_))
                        {
                           _loc5_.draw(_loc4_);
                           if(_loc6_ || Boolean(param1))
                           {
                              _loc5_.unlock();
                              if(!_loc7_)
                              {
                                 §§goto(addr0115);
                              }
                           }
                           §§goto(addr0121);
                        }
                        addr0115:
                        this.bitmapData = _loc5_;
                        if(!_loc7_)
                        {
                           addr0121:
                           this.registerCursor();
                        }
                        §§goto(addr0127);
                     }
                  }
                  addr0127:
                  return;
               }
            }
            else
            {
               _loc2_.removeEventListener(this._assetName,this.init);
               if(_loc6_)
               {
                  §§goto(addr009e);
               }
            }
         }
         §§goto(addr00a6);
      }
      
      public function get isRegistered() : Boolean
      {
         return this._isRegistered;
      }
   }
}

