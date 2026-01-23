package net.bigpoint.cityrama.model.field.ground.vo
{
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   
   public class StreetObjectVo extends PlaneObjectVo
   {
      
      private var _s:Boolean;
      
      private var _n:Boolean;
      
      private var _w:Boolean;
      
      private var _o:Boolean;
      
      public function StreetObjectVo(param1:ConfigPlayfieldItemDTO, param2:Number)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_ || _loc3_)
         {
            super(param1,param2);
         }
      }
      
      public function get s() : Boolean
      {
         return this._s;
      }
      
      public function set s(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._s = param1;
         }
      }
      
      public function get n() : Boolean
      {
         return this._n;
      }
      
      public function set n(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._n = param1;
         }
      }
      
      public function get w() : Boolean
      {
         return this._w;
      }
      
      public function set w(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || param1)
         {
            this._w = param1;
         }
      }
      
      public function get o() : Boolean
      {
         return this._o;
      }
      
      public function set o(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            this._o = param1;
         }
      }
   }
}

