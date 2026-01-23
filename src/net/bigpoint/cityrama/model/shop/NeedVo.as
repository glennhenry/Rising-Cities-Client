package net.bigpoint.cityrama.model.shop
{
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   
   public class NeedVo
   {
      
      private var _isSatisfied:Boolean;
      
      private var _shopGfxId:Number;
      
      private var _shopLocaleId:String;
      
      private var _shopConfigIds:Vector.<Number>;
      
      private var _vcBoost:Number;
      
      private var _xpBoost:Number;
      
      private var _ppBoost:Number;
      
      private var _epBoost:Number;
      
      private var _playfieldConfigs:Vector.<ConfigPlayfieldItemDTO>;
      
      public function NeedVo(param1:Vector.<ConfigPlayfieldItemDTO>, param2:Number, param3:Number, param4:Number, param5:Number)
      {
         var _temp_1:* = true;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = _temp_1;
         var _loc6_:ConfigPlayfieldItemDTO = null;
         if(_loc10_)
         {
            super();
            if(_loc10_)
            {
               this._vcBoost = param2;
               if(!(_loc9_ && Boolean(param2)))
               {
                  this._ppBoost = param3;
                  if(!(_loc9_ && Boolean(param3)))
                  {
                     §§goto(addr0053);
                  }
                  §§goto(addr005f);
               }
               §§goto(addr0074);
            }
            addr0053:
            this._epBoost = param5;
            if(_loc10_)
            {
               addr005f:
               this._xpBoost = param4;
               if(_loc10_ || Boolean(this))
               {
                  this._shopConfigIds = new Vector.<Number>();
                  addr0074:
               }
            }
            §§goto(addr008e);
         }
         addr008e:
         for each(_loc6_ in param1)
         {
            if(_loc10_ || Boolean(param1))
            {
               this._shopConfigIds.push(_loc6_.id);
               if(_loc10_ || Boolean(param3))
               {
                  if(_loc6_.isUpgrade)
                  {
                     continue;
                  }
                  if(_loc10_ || Boolean(param1))
                  {
                     this._shopGfxId = _loc6_.gfxId;
                     addr00e3:
                     if(_loc9_)
                     {
                        continue;
                     }
                  }
               }
               this._shopLocaleId = _loc6_.localeId;
               continue;
            }
            §§goto(addr00e3);
         }
         if(_loc10_ || Boolean(param1))
         {
            this._playfieldConfigs = param1;
         }
      }
      
      public function get isSatisfied() : Boolean
      {
         return this._isSatisfied;
      }
      
      public function set isSatisfied(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._isSatisfied = param1;
         }
      }
      
      public function get shopGfxId() : Number
      {
         return this._shopGfxId;
      }
      
      public function get shopConfigIds() : Vector.<Number>
      {
         return this._shopConfigIds;
      }
      
      public function get shopLocaleId() : String
      {
         return this._shopLocaleId;
      }
      
      public function get vcBoost() : Number
      {
         return this._vcBoost;
      }
      
      public function get xpBoost() : Number
      {
         return this._xpBoost;
      }
      
      public function get ppBoost() : Number
      {
         return this._ppBoost;
      }
      
      public function get epBoost() : Number
      {
         return this._epBoost;
      }
      
      public function get playfieldConfigs() : Vector.<ConfigPlayfieldItemDTO>
      {
         return this._playfieldConfigs;
      }
      
      public function get levelOneConfig() : ConfigPlayfieldItemDTO
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc1_:ConfigPlayfieldItemDTO = null;
         var _loc2_:int = 0;
         var _loc3_:* = this.playfieldConfigs;
         while(true)
         {
            for each(_loc1_ in _loc3_)
            {
               if(_loc4_ && Boolean(this))
               {
                  break;
               }
               if(!_loc1_.isUpgrade)
               {
                  if(_loc5_)
                  {
                     break;
                  }
               }
            }
            return null;
         }
         return _loc1_;
      }
   }
}

