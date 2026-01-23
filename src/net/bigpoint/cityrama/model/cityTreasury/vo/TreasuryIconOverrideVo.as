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
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         if(_loc7_ || Boolean(param2))
         {
            super();
            if(!_loc6_)
            {
               this._tab = param1;
               if(_loc7_)
               {
                  this._cat = param2;
                  if(_loc7_ || Boolean(param2))
                  {
                     addr0064:
                     this._index = param3;
                     if(!(_loc6_ && Boolean(param2)))
                     {
                        this._icon = param4;
                        if(_loc7_ || Boolean(this))
                        {
                           addr008d:
                           this._prio = param5;
                        }
                        §§goto(addr0094);
                     }
                     §§goto(addr008d);
                  }
                  addr0094:
                  return;
               }
            }
         }
         §§goto(addr0064);
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

