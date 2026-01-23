package net.bigpoint.cityrama.model.cityTreasury.vo
{
   public class TreasuryIconOverrideVo
   {
      
      private var _tab:int;
      
      private var _cat:int;
      
      private var _index:int;
      
      private var _icon:String;
      
      private var _prio:uint;
      
      public function TreasuryIconOverrideVo(param1:int, param2:int, param3:int, param4:String, param5:uint)
      {
         super();
         this._tab = param1;
         this._cat = param2;
         this._index = param3;
         this._icon = param4;
         this._prio = param5;
      }
      
      public function get tab() : int
      {
         return this._tab;
      }
      
      public function get cat() : int
      {
         return this._cat;
      }
      
      public function get index() : int
      {
         return this._index;
      }
      
      public function get icon() : String
      {
         return this._icon;
      }
      
      public function get prio() : uint
      {
         return this._prio;
      }
   }
}

