package as3isolib.enum
{
   public class IsoOrientation
   {
      
      public static const X:String = "x";
      
      public static const Y:String = "y";
      
      public static const Z:String = "z";
      
      public static const XY:String = "xy";
      
      public static const XZ:String = "xz";
      
      public static const YZ:String = "yz";
      
      public static const XYZ:String = "xyz";
      
      public static const NONE:String = "none";
      
      public static const UNDEFINED:String = "undefined";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!_loc1_)
      {
         X = "x";
         if(!_loc1_)
         {
            Y = "y";
            if(!_loc1_)
            {
               Z = "z";
               if(_loc2_ || _loc1_)
               {
                  addr0056:
                  XY = "xy";
                  if(_loc2_)
                  {
                     XZ = "xz";
                     if(_loc2_ || _loc2_)
                     {
                        addr0085:
                        YZ = "yz";
                        if(_loc2_ || _loc1_)
                        {
                           addr009c:
                           XYZ = "xyz";
                           if(_loc2_)
                           {
                              addr00ad:
                              NONE = "none";
                              if(_loc2_)
                              {
                                 UNDEFINED = "undefined";
                              }
                           }
                        }
                        §§goto(addr00c4);
                     }
                     §§goto(addr009c);
                  }
                  §§goto(addr00ad);
               }
            }
            addr00c4:
            return;
         }
         §§goto(addr0056);
      }
      §§goto(addr0085);
      
      public function IsoOrientation()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super();
         }
      }
   }
}

