package net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo
{
   import flash.geom.Point;
   
   public class UserInterfaceInfoLayerAlignLineVo
   {
      
      public static const LAYOUT_HORIZONTAL:uint = 0;
      
      private static const VALID_LAYOUTS:Vector.<uint>;
      
      public static const ALIGN_TOP:uint = 0;
      
      public static const ALIGN_BOTTOM:uint = 1;
      
      public static const ALIGN_LEFT:uint = 2;
      
      public static const ALIGN_RIGHT:uint = 3;
      
      private static const VALID_ALIGNMENTS:Vector.<uint>;
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_)
      {
         LAYOUT_HORIZONTAL = 0;
         if(!_loc2_)
         {
            VALID_LAYOUTS = new <uint>[LAYOUT_HORIZONTAL];
            if(_loc1_)
            {
               ALIGN_TOP = 0;
               if(!(_loc2_ && UserInterfaceInfoLayerAlignLineVo))
               {
                  ALIGN_BOTTOM = 1;
                  if(!(_loc2_ && _loc2_))
                  {
                     ALIGN_LEFT = 2;
                     if(!_loc2_)
                     {
                        addr0086:
                        ALIGN_RIGHT = 3;
                        if(!(_loc2_ && UserInterfaceInfoLayerAlignLineVo))
                        {
                           addr00a5:
                           VALID_ALIGNMENTS = new <uint>[ALIGN_TOP,ALIGN_BOTTOM];
                        }
                     }
                  }
                  §§goto(addr00cc);
               }
               §§goto(addr00a5);
            }
            §§goto(addr0086);
         }
         addr00cc:
         return;
      }
      §§goto(addr00a5);
      
      private var _alignment:uint;
      
      private var _layout:uint;
      
      private var _lineId:int;
      
      private var _to:Point;
      
      private var _from:Point;
      
      public function UserInterfaceInfoLayerAlignLineVo()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            super();
         }
      }
      
      private static function validate(param1:Point, param2:Point, param3:uint, param4:int) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         if(!(_loc5_ && UserInterfaceInfoLayerAlignLineVo))
         {
            if(VALID_LAYOUTS.indexOf(param3) == -1)
            {
               if(_loc6_ || Boolean(param2))
               {
                  throw new ArgumentError(param3 + " no valid layout");
               }
            }
            else
            {
               addr0062:
               if(VALID_ALIGNMENTS.indexOf(param4) == -1)
               {
                  if(_loc6_ || UserInterfaceInfoLayerAlignLineVo)
                  {
                     throw new ArgumentError(param4 + " no valid alignment");
                  }
               }
               else
               {
                  if(param1 == null)
                  {
                     if(!_loc5_)
                     {
                        throw new ArgumentError(param1 + " no valid startpoint");
                     }
                  }
                  if(param2 == null)
                  {
                     if(_loc6_)
                     {
                        throw new ArgumentError(param2 + " no valid endpoint");
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0062);
      }
      
      public function get layout() : uint
      {
         return this._layout;
      }
      
      public function get alignment() : uint
      {
         return this._alignment;
      }
      
      public function get lineId() : int
      {
         return this._lineId;
      }
      
      public function set lineId(param1:int) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            this._lineId = param1;
         }
      }
      
      public function set layout(param1:uint) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            this._layout = param1;
         }
      }
      
      public function set alignment(param1:uint) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            this._alignment = param1;
         }
      }
      
      public function get to() : Point
      {
         return this._to;
      }
      
      public function set to(param1:Point) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._to = param1;
         }
      }
      
      public function get from() : Point
      {
         return this._from;
      }
      
      public function set from(param1:Point) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._from = param1;
         }
      }
   }
}

