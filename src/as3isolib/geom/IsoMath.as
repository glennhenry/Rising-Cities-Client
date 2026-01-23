package as3isolib.geom
{
   import as3isolib.geom.transformations.DefaultIsometricTransformation;
   import as3isolib.geom.transformations.IAxonometricTransformation;
   
   public class IsoMath
   {
      
      private static var transformationObj:IAxonometricTransformation;
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!(_loc1_ && IsoMath))
      {
         transformationObj = new DefaultIsometricTransformation();
      }
      
      public function IsoMath()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            super();
         }
      }
      
      public static function get transformationObject() : IAxonometricTransformation
      {
         return transformationObj;
      }
      
      public static function set transformationObject(param1:IAxonometricTransformation) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            if(param1)
            {
               if(_loc2_)
               {
                  transformationObj = param1;
                  if(_loc2_)
                  {
                  }
               }
            }
            else
            {
               transformationObj = new new DefaultIsometricTransformation()();
            }
         }
      }
      
      public static function screenToIso(param1:Pt, param2:Boolean = false) : Pt
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc3_:Pt = transformationObject.screenToSpace(param1);
         if(!_loc5_)
         {
            if(param2)
            {
               if(_loc4_)
               {
                  return _loc3_;
               }
            }
            else
            {
               param1.x = _loc3_.x;
               if(!_loc5_)
               {
                  param1.y = _loc3_.y;
                  if(_loc4_)
                  {
                     addr0061:
                     param1.z = _loc3_.z;
                  }
                  §§goto(addr0069);
               }
               §§goto(addr0061);
            }
            addr0069:
            return param1;
         }
         §§goto(addr0061);
      }
      
      public static function isoToScreen(param1:Pt, param2:Boolean = false) : Pt
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc3_:Pt = transformationObject.spaceToScreen(param1);
         if(!_loc5_)
         {
            if(param2)
            {
               if(!(_loc5_ && param2))
               {
                  return _loc3_;
               }
            }
            else
            {
               addr005e:
               param1.x = _loc3_.x;
               if(!_loc5_)
               {
                  param1.y = _loc3_.y;
                  if(_loc4_ || IsoMath)
                  {
                     param1.z = _loc3_.z;
                  }
               }
            }
            return param1;
         }
         §§goto(addr005e);
      }
   }
}

