package net.bigpoint.cityrama.model.good.vo
{
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.detailViews.vo.GoodRequireVo;
   import net.bigpoint.cityrama.model.detailViews.vo.SimpleItemVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigGoodDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigTagDTO;
   
   public class ProductionGoodObjectVo
   {
      
      private var _configGood:ConfigGoodDTO;
      
      private var _productionTime:Number;
      
      private var _requiredGoods:Vector.<GoodRequireVo>;
      
      private var _productionCostPP:int;
      
      private var _productionYeld:int;
      
      private var _productionIncome:SimpleItemVo;
      
      public function ProductionGoodObjectVo(param1:ConfigGoodDTO)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            super();
            if(!_loc2_)
            {
               §§goto(addr002d);
            }
            §§goto(addr003f);
         }
         addr002d:
         this._configGood = param1;
         if(_loc3_ || _loc2_)
         {
            addr003f:
            this._requiredGoods = new Vector.<GoodRequireVo>();
         }
      }
      
      public function get config() : ConfigGoodDTO
      {
         return this._configGood;
      }
      
      public function get productionTime() : Number
      {
         return this._productionTime;
      }
      
      public function get productionCostProductionPoints() : int
      {
         return this._productionCostPP;
      }
      
      public function set productionTime(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._productionTime = param1;
         }
      }
      
      public function set productionCostProductionPoints(param1:int) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            this._productionCostPP = param1;
         }
      }
      
      public function get productionYeld() : int
      {
         return this._productionYeld;
      }
      
      public function set productionYeld(param1:int) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            this._productionYeld = param1;
         }
      }
      
      public function get requiredGoods() : Vector.<GoodRequireVo>
      {
         return this._requiredGoods;
      }
      
      public function get productionIncome() : SimpleItemVo
      {
         return this._productionIncome;
      }
      
      public function set productionIncome(param1:SimpleItemVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._productionIncome = param1;
         }
      }
      
      public function get groupType() : String
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc1_:ConfigTagDTO = null;
         var _loc2_:int = 0;
         var _loc3_:* = this._configGood.tagConfigs;
         while(true)
         {
            for each(_loc1_ in _loc3_)
            {
               if(!_loc4_)
               {
                  continue;
               }
               §§push(_loc1_.tagName);
               if(!_loc5_)
               {
                  §§push(ServerTagConstants.GOOD_CONSTRUCTION);
                  if(!_loc5_)
                  {
                     §§push(§§pop() == §§pop());
                     if(_loc4_ || Boolean(_loc2_))
                     {
                        var _temp_2:* = §§pop();
                        §§push(_temp_2);
                        if(!_temp_2)
                        {
                           if(_loc4_ || Boolean(_loc2_))
                           {
                              addr007a:
                              §§pop();
                              if(_loc5_)
                              {
                                 break;
                              }
                              §§push(_loc1_.tagName);
                              if(!(_loc4_ || Boolean(_loc1_)))
                              {
                                 return §§pop();
                              }
                              addr00a4:
                              addr00a3:
                              addr009e:
                              if(§§pop() == ServerTagConstants.GOOD_NORMAL)
                              {
                                 if(_loc4_ || Boolean(this))
                                 {
                                    break;
                                 }
                              }
                              continue;
                           }
                        }
                        §§goto(addr00a4);
                     }
                     §§goto(addr007a);
                  }
                  §§goto(addr00a3);
               }
               §§goto(addr009e);
            }
            return null;
         }
         §§goto(addr00ba);
         §§push(_loc1_.tagName);
      }
      
      public function get gfxId() : int
      {
         return this._configGood.gfxId;
      }
      
      public function get localeId() : String
      {
         return this._configGood.localeId;
      }
   }
}

