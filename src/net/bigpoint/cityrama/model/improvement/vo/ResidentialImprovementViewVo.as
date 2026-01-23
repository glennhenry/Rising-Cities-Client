package net.bigpoint.cityrama.model.improvement.vo
{
   import mx.collections.ArrayCollection;
   import mx.resources.ResourceManager;
   import net.bigpoint.cityrama.model.architecturalBook.ArchitecturalBookProxy;
   import net.bigpoint.cityrama.model.detailViews.vo.DropDownAmountListItemVo;
   import net.bigpoint.cityrama.model.field.vo.ResidentialFieldObjectVo;
   import net.bigpoint.cityrama.model.residentialBook.vo.ImprovementSlotComponentVo;
   import net.bigpoint.cityrama.view.common.components.vo.BriskDynaVo;
   import net.bigpoint.cityrama.view.homeImprovement.hipinventory.ui.components.vo.ImprovementInventoryItemRendererVo;
   import net.bigpoint.cityrama.view.homeImprovement.hipinventory.ui.vo.ImprovementInventoryViewVo;
   import net.bigpoint.cityrama.view.residentialBook.ui.components.ResidentialImprovementContentComponent;
   
   public class ResidentialImprovementViewVo
   {
      
      private var _residentialVo:ResidentialFieldObjectVo;
      
      private var _inventoryData:ImprovementInventoryViewVo;
      
      private var _slotData:Vector.<ImprovementSlotComponentVo>;
      
      public function ResidentialImprovementViewVo()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            super();
         }
      }
      
      public function get residentialVo() : ResidentialFieldObjectVo
      {
         return this._residentialVo;
      }
      
      public function set residentialVo(param1:ResidentialFieldObjectVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._residentialVo = param1;
         }
      }
      
      public function getBuildingName(param1:Boolean = false) : String
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            if(param1)
            {
               if(!_loc3_)
               {
                  §§push(ResourceManager.getInstance());
                  if(_loc2_)
                  {
                     §§push(§§pop().getString(String("rcl.playfielditems.name"),String("rcl.playfielditems.name." + this.residentialVo.configPlayfieldItemVo.localeId + ".capital")));
                     if(!_loc3_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr007b:
                     return §§pop().getString(String("rcl.playfielditems.name"),String("rcl.playfielditems.name." + this.residentialVo.configPlayfieldItemVo.localeId));
                  }
                  return §§pop();
               }
               addr0075:
               §§push(ResourceManager.getInstance());
               §§goto(addr007b);
            }
         }
         §§goto(addr0075);
      }
      
      public function get buildingGfx() : BriskDynaVo
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         §§push(ArchitecturalBookProxy.getItemIconLibByConfigPlayfieldItemDTO(this.residentialVo.buildingDTO.config));
         if(!(_loc3_ && Boolean(this)))
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         §§push("FieldItem_");
         if(_loc4_)
         {
            §§push(this.residentialVo);
            if(_loc4_)
            {
               §§push(§§pop() + §§pop().configPlayfieldItemVo.gfxId);
               if(!(_loc3_ && _loc2_))
               {
                  §§push("_level");
                  if(!(_loc3_ && Boolean(this)))
                  {
                     §§push(§§pop() + §§pop());
                     if(!(_loc3_ && Boolean(this)))
                     {
                        §§goto(addr0096);
                     }
                     §§goto(addr00a8);
                  }
                  §§goto(addr00ab);
               }
               §§goto(addr00a8);
            }
            addr0096:
            §§goto(addr00ac);
         }
         addr00ac:
         §§push(§§pop() + this.residentialVo.currentLevel);
         if(_loc4_ || _loc1_)
         {
            addr00a8:
            addr00ab:
            §§push(§§pop() + "_big");
         }
         var _loc2_:* = §§pop();
         return new BriskDynaVo(_loc1_,_loc2_);
      }
      
      public function get sortFilterData() : ArrayCollection
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc1_:ArrayCollection = new ArrayCollection();
         var _loc2_:DropDownAmountListItemVo = new DropDownAmountListItemVo();
         if(!(_loc3_ && _loc3_))
         {
            _loc2_.sortType = ImprovementInventoryViewVo.SORT_ALL;
            if(_loc4_ || Boolean(_loc1_))
            {
               _loc2_.categoryLabel = ResourceManager.getInstance().getString(String("rcl.booklayer.residentialImprovement"),String("rcl.booklayer.residentialImprovement.filter.all"));
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  addr0077:
                  _loc2_.categoryAmount = this.inventoryData.getAmountByType(ImprovementInventoryViewVo.SORT_ALL);
                  if(_loc4_)
                  {
                     _loc1_.addItem(_loc2_);
                  }
               }
            }
            _loc2_ = new DropDownAmountListItemVo();
            if(!(_loc3_ && Boolean(this)))
            {
               _loc2_.sortType = ImprovementInventoryViewVo.SORT_COMMON;
               if(!_loc3_)
               {
                  _loc2_.categoryLabel = ResourceManager.getInstance().getString(String("rcl.booklayer.residentialImprovement"),String("rcl.booklayer.residentialImprovement.filter.common"));
                  if(!_loc3_)
                  {
                     addr00e0:
                     _loc2_.categoryAmount = this.inventoryData.getAmountByType(ImprovementInventoryViewVo.SORT_COMMON);
                     if(_loc4_ || Boolean(this))
                     {
                        _loc1_.addItem(_loc2_);
                     }
                  }
                  _loc2_ = new DropDownAmountListItemVo();
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     _loc2_.sortType = ImprovementInventoryViewVo.SORT_RARE;
                     if(_loc4_)
                     {
                        _loc2_.categoryLabel = ResourceManager.getInstance().getString(String("rcl.booklayer.residentialImprovement"),String("rcl.booklayer.residentialImprovement.filter.rare"));
                        if(!_loc3_)
                        {
                           _loc2_.categoryAmount = this.inventoryData.getAmountByType(ImprovementInventoryViewVo.SORT_RARE);
                           if(!(_loc3_ && Boolean(_loc2_)))
                           {
                              addr0181:
                              _loc1_.addItem(_loc2_);
                           }
                           addr0187:
                           _loc2_ = new DropDownAmountListItemVo();
                           if(_loc4_)
                           {
                              _loc2_.sortType = ImprovementInventoryViewVo.SORT_EPIC;
                              if(!(_loc3_ && _loc3_))
                              {
                                 addr01af:
                                 _loc2_.categoryLabel = ResourceManager.getInstance().getString(String("rcl.booklayer.residentialImprovement"),String("rcl.booklayer.residentialImprovement.filter.epic"));
                                 if(!_loc3_)
                                 {
                                    _loc2_.categoryAmount = this.inventoryData.getAmountByType(ImprovementInventoryViewVo.SORT_EPIC);
                                    if(!(_loc3_ && Boolean(_loc1_)))
                                    {
                                       addr01f2:
                                       _loc1_.addItem(_loc2_);
                                    }
                                    _loc2_ = new DropDownAmountListItemVo();
                                    if(!(_loc3_ && Boolean(_loc2_)))
                                    {
                                       _loc2_.sortType = ImprovementInventoryViewVo.SORT_LEGENDARY;
                                       if(!(_loc3_ && Boolean(this)))
                                       {
                                          _loc2_.categoryLabel = ResourceManager.getInstance().getString(String("rcl.booklayer.residentialImprovement"),String("rcl.booklayer.residentialImprovement.filter.legendary"));
                                          if(!_loc3_)
                                          {
                                             _loc2_.categoryAmount = this.inventoryData.getAmountByType(ImprovementInventoryViewVo.SORT_LEGENDARY);
                                             if(!_loc3_)
                                             {
                                                addr026f:
                                                _loc1_.addItem(_loc2_);
                                             }
                                          }
                                          §§goto(addr0275);
                                       }
                                       §§goto(addr026f);
                                    }
                                    addr0275:
                                    return _loc1_;
                                 }
                              }
                              §§goto(addr01f2);
                           }
                           §§goto(addr01af);
                        }
                     }
                     §§goto(addr0181);
                  }
                  §§goto(addr0187);
               }
            }
            §§goto(addr00e0);
         }
         §§goto(addr0077);
      }
      
      public function get inventoryData() : ImprovementInventoryViewVo
      {
         return this._inventoryData;
      }
      
      public function set inventoryData(param1:ImprovementInventoryViewVo) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._inventoryData = param1;
         }
      }
      
      public function get slotData() : Vector.<ImprovementSlotComponentVo>
      {
         return this._slotData;
      }
      
      public function set slotData(param1:Vector.<ImprovementSlotComponentVo>) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            this._slotData = param1;
            if(_loc3_ || _loc2_)
            {
               this.slotData.sort(this.sortSlot);
            }
         }
      }
      
      private function getImprovementInventoryItemRendererVo(param1:Number, param2:String = "SORT_ALL") : ImprovementInventoryItemRendererVo
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc3_:ImprovementInventoryItemRendererVo = null;
         var _loc4_:int = 0;
         var _loc5_:* = this.inventoryData.getListAsArrayCollectionByType(param2);
         while(true)
         {
            for each(_loc3_ in _loc5_)
            {
               if(!_loc7_)
               {
                  §§push(_loc3_.improvementVo);
                  if(!_loc7_)
                  {
                     if(!§§pop())
                     {
                        continue;
                     }
                     if(!_loc6_)
                     {
                        break;
                     }
                     §§push(_loc3_.improvementVo);
                  }
                  if(§§pop().config.id == param1)
                  {
                     if(!(_loc7_ && Boolean(this)))
                     {
                        break;
                     }
                  }
               }
            }
            return null;
         }
         return _loc3_;
      }
      
      public function getImprovementByConfigId(param1:Number) : ImprovementVo
      {
         var _loc2_:ImprovementInventoryItemRendererVo = this.getImprovementInventoryItemRendererVo(param1);
         return _loc2_.improvementVo;
      }
      
      public function getImprovementIndex(param1:Number, param2:String = "SORT_ALL") : int
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(_loc5_ || Boolean(param2))
         {
            §§push(param2);
            if(!(_loc4_ && _loc3_))
            {
               if(§§pop() == ResidentialImprovementContentComponent.SORT_FILTER_NONE)
               {
                  if(!_loc4_)
                  {
                     §§push(ImprovementInventoryViewVo.SORT_ALL);
                     if(!(_loc4_ && Boolean(this)))
                     {
                        addr006f:
                        §§push(§§pop());
                     }
                     param2 = §§pop();
                  }
               }
               §§goto(addr0071);
            }
            §§goto(addr006f);
         }
         addr0071:
         var _loc3_:ImprovementInventoryItemRendererVo = this.getImprovementInventoryItemRendererVo(param1,param2);
         return this.inventoryData.getListAsArrayCollectionByType(param2).getItemIndex(_loc3_) + 1;
      }
      
      private function sortSlot(param1:ImprovementSlotComponentVo, param2:ImprovementSlotComponentVo) : int
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!(_loc3_ && Boolean(this)))
         {
            §§push(param1.configSlot);
            if(!(_loc3_ && Boolean(this)))
            {
               §§push(§§pop().orderId);
               if(!(_loc3_ && Boolean(this)))
               {
                  §§push(param1.configSlot);
                  if(_loc4_ || Boolean(this))
                  {
                     §§push(§§pop().orderId);
                     if(_loc4_ || Boolean(param2))
                     {
                        if(§§pop() > §§pop())
                        {
                           if(!(_loc3_ && Boolean(this)))
                           {
                              addr0083:
                              §§push(1);
                              if(_loc4_ || Boolean(this))
                              {
                                 return §§pop();
                              }
                              addr00c1:
                              addr00c8:
                              addr00c5:
                              if(§§pop() < param1.configSlot.orderId)
                              {
                                 if(_loc4_)
                                 {
                                    §§push(-1);
                                    if(_loc4_ || Boolean(param1))
                                    {
                                       return §§pop();
                                    }
                                 }
                                 else
                                 {
                                    addr00e3:
                                    §§push(0);
                                 }
                                 §§goto(addr00e5);
                              }
                              §§goto(addr00e3);
                           }
                           else
                           {
                              addr00a1:
                              addr00a5:
                              §§push(param1.configSlot.orderId);
                              if(!(_loc3_ && Boolean(param2)))
                              {
                                 §§goto(addr00c1);
                              }
                           }
                           addr00e5:
                           return §§pop();
                        }
                        §§goto(addr00a1);
                     }
                     §§goto(addr00c8);
                  }
                  §§goto(addr00c5);
               }
               §§goto(addr00c1);
            }
            §§goto(addr00a5);
         }
         §§goto(addr0083);
      }
   }
}

