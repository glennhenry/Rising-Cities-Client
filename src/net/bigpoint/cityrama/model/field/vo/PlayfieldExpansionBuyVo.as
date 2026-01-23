package net.bigpoint.cityrama.model.field.vo
{
   public class PlayfieldExpansionBuyVo
   {
      
      private var _pp:Boolean;
      
      private var _cpe:Number;
      
      private var _expansion:ExpansionFieldObjectVo;
      
      public function PlayfieldExpansionBuyVo()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            super();
         }
      }
      
      public function get pp() : Boolean
      {
         return this._pp;
      }
      
      public function set pp(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            this._pp = param1;
         }
      }
      
      public function get cpe() : Number
      {
         return this._cpe;
      }
      
      public function set cpe(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._cpe = param1;
         }
      }
      
      public function get expansion() : ExpansionFieldObjectVo
      {
         return this._expansion;
      }
      
      public function set expansion(param1:ExpansionFieldObjectVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            this._expansion = param1;
         }
      }
   }
}

