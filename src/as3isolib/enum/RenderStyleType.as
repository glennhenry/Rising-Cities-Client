package as3isolib.enum
{
   public class RenderStyleType
   {
      
      public static const WIREFRAME:String = "wireframe";
      
      public static const SOLID:String = "solid";
      
      public static const NONE:String = "none";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_)
      {
         WIREFRAME = "wireframe";
         if(!(_loc1_ && _loc1_))
         {
            SOLID = "solid";
            if(_loc2_)
            {
               §§goto(addr0047);
            }
         }
         §§goto(addr005e);
      }
      addr0047:
      
      public static const SHADED:String = "shaded";
      
      if(_loc2_ || _loc1_)
      {
         addr005e:
         NONE = "none";
      }
      
      public function RenderStyleType()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            super();
         }
      }
   }
}

