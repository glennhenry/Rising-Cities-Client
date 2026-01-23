package net.bigpoint.cityrama.view.boosterpackstore.ui.components
{
   import net.bigpoint.cityrama.model.boosterpack.BoosterpackBookProxy;
   import net.bigpoint.cityrama.model.boosterpack.vo.BoosterpackVo;
   import net.bigpoint.cityrama.view.boosterpackstore.ui.skins.GridItemNormalSkin;
   import net.bigpoint.cityrama.view.boosterpackstore.ui.skins.GridItemSkin;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.RichText;
   import spark.components.supportClasses.ButtonBase;
   
   public class GridItemComponent extends ButtonBase
   {
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_)
      {
         _skinParts = {
            "image":true,
            "infoIcon":false,
            "costGroup":false,
            "priceIcon":false,
            "iconDisplay":false,
            "itemLabel":false,
            "labelDisplay":false,
            "backgroundPrint":false,
            "newIcon":false
         };
      }
      
      private var _itemIndex:int;
      
      private var _data:BoosterpackVo;
      
      private var _showPrice:Boolean = true;
      
      private var _showInfoIcon:Boolean = true;
      
      private var _isDirty:Boolean;
      
      public var image:BriskImageDynaLib;
      
      public var backgroundPrint:BriskImageDynaLib;
      
      public var itemLabel:RichText;
      
      public var costGroup:Group;
      
      public var infoIcon:BriskImageDynaLib;
      
      public var priceIcon:BriskImageDynaLib;
      
      public var newIcon:BriskImageDynaLib;
      
      public function GridItemComponent()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super();
            if(_loc2_ || Boolean(this))
            {
               setStyle("skinClass",GridItemSkin);
            }
         }
      }
      
      public function get itemIndex() : int
      {
         return this._itemIndex;
      }
      
      public function set data(param1:*) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            if(!RandomUtilities.isEqual(param1,this._data))
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  this._isDirty = true;
                  if(_loc2_)
                  {
                     this._data = param1 as BoosterpackVo;
                     if(!(_loc3_ && _loc3_))
                     {
                        if(this._data.type == BoosterpackBookProxy.SUBLEVEL_BOOSTER)
                        {
                           if(!_loc3_)
                           {
                              addr0082:
                              setStyle("skinClass",GridItemNormalSkin);
                              if(!(_loc3_ && _loc3_))
                              {
                                 addr009a:
                                 invalidateProperties();
                              }
                           }
                           §§goto(addr009f);
                        }
                        §§goto(addr009a);
                     }
                     §§goto(addr0082);
                  }
                  §§goto(addr009f);
               }
               §§goto(addr009a);
            }
         }
         addr009f:
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc1_))
         {
            super.commitProperties();
            if(_loc2_ || Boolean(this))
            {
               if(this._isDirty)
               {
                  if(_loc2_ || Boolean(this))
                  {
                     this._isDirty = false;
                     if(_loc2_)
                     {
                        addr0052:
                        §§push(this.image);
                        if(_loc2_ || _loc3_)
                        {
                           §§push("gui_resources_icons");
                           if(_loc2_ || _loc2_)
                           {
                              §§pop().dynaLibName = §§pop();
                              if(_loc2_)
                              {
                                 addr007e:
                                 §§push(this.image);
                                 §§push("ressource_");
                                 if(_loc2_)
                                 {
                                    addr0086:
                                    §§push(§§pop() + this._data.gfxId);
                                    if(_loc2_)
                                    {
                                       addr0093:
                                       §§push(§§pop() + "_medium");
                                    }
                                    §§pop().dynaBmpSourceName = §§pop();
                                    if(_loc2_ || _loc1_)
                                    {
                                       addr00a6:
                                       §§push(this.backgroundPrint);
                                       if(!_loc3_)
                                       {
                                          if(this._data.type == BoosterpackBookProxy.SUBLEVEL_BOOSTER)
                                          {
                                             addr00bf:
                                             §§push("sublevel_pack_small");
                                             if(_loc3_)
                                             {
                                             }
                                          }
                                          else
                                          {
                                             §§push("specialgood_cardBoard_small");
                                          }
                                          §§pop().dynaBmpSourceName = §§pop();
                                          if(!(_loc3_ && Boolean(this)))
                                          {
                                             addr00eb:
                                             §§push(this.newIcon);
                                             if(!_loc3_)
                                             {
                                                if(§§pop())
                                                {
                                                   if(!(_loc3_ && _loc1_))
                                                   {
                                                      addr0109:
                                                      this.newIcon.visible = this.newIcon.includeInLayout = false;
                                                      addr0105:
                                                      if(_loc2_)
                                                      {
                                                         addr011c:
                                                         this.itemLabel.text = LocaUtils.getThousendSeperatedNumber(Math.abs(this._data.defaultCostAmount));
                                                         if(_loc2_ || _loc3_)
                                                         {
                                                            §§goto(addr0142);
                                                         }
                                                         §§goto(addr019a);
                                                      }
                                                      addr0142:
                                                      if(this._data.defaultCostConfig.goodConfig)
                                                      {
                                                         if(_loc2_ || Boolean(this))
                                                         {
                                                            addr015d:
                                                            §§push(this.priceIcon);
                                                            if(!(_loc3_ && _loc3_))
                                                            {
                                                               §§push("gui_popups_boosterpackBook");
                                                               if(!(_loc3_ && _loc3_))
                                                               {
                                                                  §§pop().dynaLibName = §§pop();
                                                                  if(_loc2_ || _loc3_)
                                                                  {
                                                                     addr019e:
                                                                     addr019a:
                                                                     §§push(this.priceIcon);
                                                                     §§push("icon_");
                                                                     if(_loc2_ || _loc3_)
                                                                     {
                                                                        §§push(§§pop() + this._data.defaultCostConfig.goodConfig.gfxId);
                                                                        if(_loc2_)
                                                                        {
                                                                           addr01c1:
                                                                           §§push(§§pop() + "_small");
                                                                        }
                                                                        §§pop().dynaBmpSourceName = §§pop();
                                                                        §§goto(addr01c7);
                                                                     }
                                                                     §§goto(addr01c1);
                                                                  }
                                                                  §§goto(addr01c7);
                                                               }
                                                               §§goto(addr01c1);
                                                            }
                                                            §§goto(addr019e);
                                                         }
                                                         §§goto(addr019a);
                                                      }
                                                   }
                                                   §§goto(addr01c7);
                                                }
                                                §§goto(addr011c);
                                             }
                                             §§goto(addr0109);
                                          }
                                          §§goto(addr0105);
                                       }
                                       §§goto(addr00bf);
                                    }
                                    §§goto(addr00eb);
                                 }
                                 §§goto(addr0093);
                              }
                              §§goto(addr019a);
                           }
                           §§goto(addr0086);
                        }
                        §§goto(addr007e);
                     }
                     §§goto(addr019a);
                  }
                  §§goto(addr00a6);
               }
               addr01c7:
               return;
            }
            §§goto(addr015d);
         }
         §§goto(addr0052);
      }
      
      override protected function partAdded(param1:String, param2:Object) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(_loc5_ || Boolean(param2))
         {
            super.partAdded(param1,param2);
            if(!_loc4_)
            {
               if(param2 == this.costGroup)
               {
                  if(!(_loc4_ && _loc3_))
                  {
                     this.costGroup.includeInLayout = this._showPrice;
                     if(_loc5_ || Boolean(this))
                     {
                        this.costGroup.visible = this._showPrice;
                        if(_loc5_ || Boolean(param2))
                        {
                           addr0085:
                           if(param2 == this.infoIcon)
                           {
                              if(_loc5_ || Boolean(param2))
                              {
                                 addr009c:
                                 §§push(this.infoIcon);
                                 if(!_loc4_)
                                 {
                                    §§push(this._showInfoIcon);
                                    if(!_loc4_)
                                    {
                                       §§pop().includeInLayout = §§pop();
                                       if(_loc5_ || Boolean(param2))
                                       {
                                          addr00c8:
                                          this.infoIcon.visible = this._showInfoIcon;
                                          addr00c4:
                                          addr00c0:
                                          if(_loc5_ || Boolean(this))
                                          {
                                             §§goto(addr00e4);
                                          }
                                          §§goto(addr00f3);
                                       }
                                       §§goto(addr00e4);
                                    }
                                    §§goto(addr00c8);
                                 }
                                 §§goto(addr00c4);
                              }
                              §§goto(addr00c0);
                           }
                           addr00e4:
                           if(param2 == this.newIcon)
                           {
                              if(_loc5_)
                              {
                                 addr00f3:
                                 this.newIcon.visible = this.newIcon.includeInLayout = false;
                              }
                           }
                           §§goto(addr0105);
                        }
                        §§goto(addr009c);
                     }
                     §§goto(addr00f3);
                  }
                  addr0105:
                  return;
               }
            }
            §§goto(addr0085);
         }
         §§goto(addr009c);
      }
      
      public function set itemIndex(param1:int) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            if(this._itemIndex != param1)
            {
               if(!(_loc3_ && _loc2_))
               {
                  this._itemIndex = param1;
                  if(_loc2_)
                  {
                     addr0043:
                     invalidateProperties();
                  }
                  §§goto(addr0048);
               }
               §§goto(addr0043);
            }
            addr0048:
            return;
         }
         §§goto(addr0043);
      }
      
      public function get showPrice() : Boolean
      {
         return this._showPrice;
      }
      
      public function set showPrice(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            this._showPrice = param1;
            if(!_loc3_)
            {
               addr0028:
               invalidateProperties();
            }
            return;
         }
         §§goto(addr0028);
      }
      
      public function get showInfoIcon() : Boolean
      {
         return this._showInfoIcon;
      }
      
      public function set showInfoIcon(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            this._showInfoIcon = param1;
            if(!(_loc2_ && Boolean(this)))
            {
               invalidateProperties();
            }
         }
      }
      
      public function get imageBackground() : String
      {
         return "specialgood_cardBoard_small";
      }
   }
}

