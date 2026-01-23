package net.bigpoint.cityrama.view.field.ground.ui.components
{
   import as3isolib.display.IsoGroup;
   import as3isolib.display.primitive.IsoRectangle;
   import as3isolib.enum.IsoOrientation;
   import as3isolib.graphics.BitmapFill;
   import com.greensock.TweenMax;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Rectangle;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigGroundRestrictionDTO;
   
   public class RestrictionGridView extends IsoGroup
   {
      
      public static const RED:uint = 4294901760;
      
      public static const GREEN:uint = 4278255414;
      
      public static const WHITE:uint = 4289374890;
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!_loc1_)
      {
         RED = 4294901760;
         if(_loc2_ || RestrictionGridView)
         {
            addr0035:
            GREEN = 4278255414;
            if(_loc2_)
            {
               WHITE = 4289374890;
            }
         }
         return;
      }
      §§goto(addr0035);
      
      private var _sourceRestrictions:Vector.<ConfigGroundRestrictionDTO>;
      
      private var _tileSize:Number;
      
      private var _maxSize:Rectangle;
      
      private var smallHeatMapBData:BitmapData;
      
      private var _restrictionRect:IsoRectangle;
      
      private var _restrictionFill:BitmapFill;
      
      public function RestrictionGridView(param1:Number, param2:Rectangle)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!_loc3_)
         {
            super();
            if(_loc4_ || Boolean(this))
            {
               this._tileSize = param1;
               if(_loc4_ || _loc3_)
               {
                  addr0056:
                  this._maxSize = param2;
                  if(!(_loc3_ && Boolean(param2)))
                  {
                     this.container.alpha = 0.3;
                     if(!_loc3_)
                     {
                        addr0076:
                        this.buildMap();
                     }
                  }
               }
               return;
            }
            §§goto(addr0056);
         }
         §§goto(addr0076);
      }
      
      public function setSource(param1:Vector.<ConfigGroundRestrictionDTO>) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            this._sourceRestrictions = param1;
            if(_loc2_ || _loc2_)
            {
               this.buildMap();
               if(!_loc3_)
               {
                  addr0048:
                  this.removeAllChildren();
               }
            }
            return;
         }
         §§goto(addr0048);
      }
      
      public function set visible(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.container.visible = param1;
         }
      }
      
      private function buildMap() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            this.smallHeatMapBData = new BitmapData(this._maxSize.width + this._maxSize.x,this._maxSize.height + this._maxSize.y,true,16777215);
            if(_loc2_ || _loc2_)
            {
               §§goto(addr005f);
            }
            §§goto(addr0074);
         }
         addr005f:
         this.smallHeatMapBData.lock();
         if(_loc2_ || Boolean(this))
         {
            addr0074:
            this.smallHeatMapBData.unlock();
         }
      }
      
      public function addTile(param1:int, param2:int, param3:Number = 4278255414) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(!(_loc5_ && Boolean(param1)))
         {
            this.smallHeatMapBData.setPixel32(param1,param2,param3);
            if(!(_loc5_ && Boolean(this)))
            {
               addr0054:
               TweenMax.killDelayedCallsTo(this.updateView);
               if(_loc4_ || Boolean(param2))
               {
                  TweenMax.delayedCall(0.1,this.updateView);
               }
            }
            return;
         }
         §§goto(addr0054);
      }
      
      private function updateView() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc1_))
         {
            this.removeAllChildren();
            if(!_loc3_)
            {
               this._restrictionRect = new IsoRectangle();
               if(!_loc3_)
               {
                  addr003a:
                  §§push(this._restrictionRect);
                  if(_loc2_)
                  {
                     §§push(this._maxSize.width * this._tileSize);
                     if(_loc2_)
                     {
                        §§push(this._maxSize.height * this._tileSize);
                        if(!_loc3_)
                        {
                           §§push(0);
                           if(!(_loc3_ && Boolean(this)))
                           {
                              §§pop().setSize(§§pop(),§§pop(),§§pop());
                              if(_loc2_ || _loc3_)
                              {
                                 §§push(this._restrictionRect);
                                 if(_loc2_)
                                 {
                                    §§goto(addr00b2);
                                 }
                                 §§goto(addr00c7);
                              }
                              §§goto(addr00c3);
                           }
                           addr00b2:
                           §§pop().moveTo(this._maxSize.x * this._tileSize,this._maxSize.y * this._tileSize,0);
                           §§goto(addr00b0);
                        }
                        addr00b0:
                        §§goto(addr00a5);
                     }
                     addr00a5:
                     §§goto(addr009a);
                  }
                  addr009a:
                  if(_loc2_ || _loc1_)
                  {
                     addr00c7:
                     this._restrictionRect.strokes = [];
                     addr00c3:
                  }
                  §§goto(addr00cc);
               }
               addr00cc:
               var _loc1_:Matrix = new Matrix();
               if(_loc2_)
               {
                  _loc1_.scale(this._tileSize,this._tileSize);
                  if(_loc2_)
                  {
                     this._restrictionFill = new BitmapFill(this.smallHeatMapBData,IsoOrientation.XY,_loc1_);
                     if(!_loc3_)
                     {
                        this._restrictionRect.fills = [this._restrictionFill];
                        if(!(_loc3_ && Boolean(this)))
                        {
                           addr0133:
                           addChild(this._restrictionRect);
                        }
                        §§goto(addr013e);
                     }
                     §§goto(addr0133);
                  }
               }
               addr013e:
               return;
            }
         }
         §§goto(addr003a);
      }
      
      public function set maxSize(param1:Rectangle) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            this._maxSize = param1;
         }
      }
   }
}

