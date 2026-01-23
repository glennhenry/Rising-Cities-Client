package net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers
{
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Matrix;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.SmartObjectContainer;
   import net.bigpoint.fieldLibrary.utils.FieldUtils;
   
   public class HitZoneAssistant
   {
      
      public static const SCALE_FACTOR:Number = 3;
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_ || _loc1_)
      {
         SCALE_FACTOR = 3;
      }
      
      private var _hitBoxContainer:Sprite;
      
      private var _bitmapData:BitmapData;
      
      private var _smartBillboardContainer:SmartObjectContainer;
      
      private var _hitZoneBuild:Boolean;
      
      public function HitZoneAssistant(param1:Sprite, param2:SmartObjectContainer)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_ || Boolean(param2))
         {
            super();
            if(!(_loc3_ && _loc3_))
            {
               this._hitZoneBuild = false;
               if(!(_loc3_ && _loc3_))
               {
                  addr005b:
                  this._hitBoxContainer = param1;
                  if(!_loc3_)
                  {
                     this._smartBillboardContainer = param2;
                     if(!(_loc3_ && _loc3_))
                     {
                        addr0077:
                        this._smartBillboardContainer.addEventListener(SmartObjectContainer.INVALIDATED,this.invalidateHitZone);
                     }
                  }
               }
               return;
            }
            §§goto(addr0077);
         }
         §§goto(addr005b);
      }
      
      private function invalidateHitZone(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!(_loc3_ && Boolean(param1)))
         {
            param1.stopPropagation();
         }
         var _loc2_:BitmapData = this.getBitmapDataFast(this._smartBillboardContainer.currentImage);
         if(!(_loc3_ && Boolean(this)))
         {
            if(_loc2_)
            {
               if(!_loc3_)
               {
                  this._bitmapData = this.setBitmapData(_loc2_);
                  if(_loc4_)
                  {
                     addr0076:
                     this.buildHitZone();
                  }
                  §§goto(addr007c);
               }
               §§goto(addr0076);
            }
         }
         addr007c:
      }
      
      private function buildHitZone() : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc1_:DisplayObject = FieldUtils.getOutline(this._bitmapData,0,0,null);
         if(_loc5_ || _loc2_)
         {
            var _temp_4:* = _loc1_;
            var _loc3_:Number;
            _loc1_.scaleY = _loc3_ = SCALE_FACTOR;
            _temp_4.scaleX = _loc3_;
            if(!_loc4_)
            {
               _loc1_.alpha = 0;
            }
         }
         var _loc2_:SimpleButton = new SimpleButton(_loc1_,null,null,_loc1_);
         do
         {
            if(this._hitBoxContainer.numChildren)
            {
               continue;
            }
            if(!(_loc4_ && Boolean(_loc1_)))
            {
               _loc2_.useHandCursor = false;
               if(!(_loc4_ && Boolean(_loc1_)))
               {
                  this._hitBoxContainer.addChild(_loc2_);
                  if(_loc4_ && Boolean(_loc3_))
                  {
                     break;
                  }
                  _loc2_.x = this._smartBillboardContainer.currentImage.x;
                  if(!(_loc4_ && Boolean(_loc3_)))
                  {
                     addr00ec:
                     _loc2_.y = this._smartBillboardContainer.currentImage.y;
                     if(!_loc4_)
                     {
                        break;
                     }
                  }
               }
               §§goto(addr0106);
            }
            §§goto(addr00ec);
         }
         while(this._hitBoxContainer.removeChildAt(0), !_loc4_);
         
         this._bitmapData.dispose();
         addr0106:
      }
      
      private function setBitmapData(param1:BitmapData) : BitmapData
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:Matrix = new Matrix();
         §§push(0.5);
         if(_loc6_ || Boolean(this))
         {
            §§push(§§pop() / SCALE_FACTOR);
            if(_loc6_ || Boolean(param1))
            {
               §§push(§§pop());
            }
         }
         var _loc3_:* = §§pop();
         if(_loc6_)
         {
            _loc2_.scale(_loc3_,_loc3_);
         }
         var _loc4_:BitmapData = new BitmapData(param1.width * _loc3_,param1.height * _loc3_,true,0);
         _loc4_.draw(param1,_loc2_,null,null,null,true);
         if(_loc6_)
         {
            param1.dispose();
         }
         return _loc4_;
      }
      
      private function getBitmapDataFast(param1:DisplayObject) : BitmapData
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc3_:BitmapData = null;
         var _loc2_:DisplayObject = param1;
         if(!_loc5_)
         {
            if(_loc2_ != null)
            {
               if(!_loc5_)
               {
                  addr002e:
                  §§push(Boolean(_loc2_.width));
                  if(_loc4_ || Boolean(param1))
                  {
                     var _temp_2:* = §§pop();
                     §§push(_temp_2);
                     if(_temp_2)
                     {
                        if(!_loc5_)
                        {
                           addr0058:
                           §§pop();
                           if(!_loc5_)
                           {
                              §§goto(addr0063);
                           }
                           §§goto(addr0067);
                        }
                     }
                     addr0063:
                     §§goto(addr005f);
                  }
                  §§goto(addr0058);
               }
               addr005f:
               if(Boolean(_loc2_.height))
               {
                  addr0067:
                  _loc3_ = new BitmapData(_loc2_.width,_loc2_.height,true,16711680);
                  if(!(_loc5_ && Boolean(_loc3_)))
                  {
                     _loc3_.lock();
                     if(_loc4_)
                     {
                        §§goto(addr00a1);
                     }
                     §§goto(addr00b8);
                  }
                  addr00a1:
                  _loc3_.draw(_loc2_);
                  if(_loc4_)
                  {
                     _loc3_.unlock();
                     if(!_loc5_)
                     {
                        addr00b8:
                        return _loc3_;
                     }
                  }
               }
               §§goto(addr00ba);
            }
            addr00ba:
            return null;
         }
         §§goto(addr002e);
      }
   }
}

