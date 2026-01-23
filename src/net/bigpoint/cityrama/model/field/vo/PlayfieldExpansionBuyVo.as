package net.bigpoint.cityrama.model.field.vo
{
   public class PlayfieldExpansionBuyVo
   {
      
      private var _pp:Boolean;
      
      private var _cpe:Number;
      
      private var _expansion:ExpansionFieldObjectVo;
      
      public function PlayfieldExpansionBuyVo()
      {
         super();
      }
      
      public function get pp() : Boolean
      {
         return this._pp;
      }
      
      public function set pp(param1:Boolean) : void
      {
         this._pp = param1;
      }
      
      public function get cpe() : Number
      {
         return this._cpe;
      }
      
      public function set cpe(param1:Number) : void
      {
         this._cpe = param1;
      }
      
      public function get expansion() : ExpansionFieldObjectVo
      {
         return this._expansion;
      }
      
      public function set expansion(param1:ExpansionFieldObjectVo) : void
      {
         this._expansion = param1;
      }
   }
}

