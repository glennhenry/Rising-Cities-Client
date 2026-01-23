package net.bigpoint.cityrama.view.architectBook.ui.components
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flashx.textLayout.conversion.TextConverter;
   import net.bigpoint.cityrama.model.architecturalBook.ArchitecturalBookProxy;
   import net.bigpoint.cityrama.model.architecturalBook.vo.BlueprintVo;
   import net.bigpoint.cityrama.model.architecturalBook.vo.CenterItemDataVo;
   import net.bigpoint.cityrama.model.level.vo.MixedItemTypesVo;
   import net.bigpoint.cityrama.view.architectBook.ui.skins.LargeDetailComponentGoodSkin;
   import net.bigpoint.cityrama.view.architectBook.ui.skins.LargeDetailComponentLockedSkin;
   import net.bigpoint.cityrama.view.architectBook.ui.skins.LargeDetailComponentNoPermissionAvailableSkin;
   import net.bigpoint.cityrama.view.architectBook.ui.skins.LargeDetailComponentNormalSkin;
   import net.bigpoint.cityrama.view.architectBook.ui.skins.LargeDetailComponentPermissionAvailableSkin;
   import net.bigpoint.cityrama.view.architectBook.ui.skins.LargeDetailComponentPremiumSkin;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.DynamicImageButton;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.util.LocaUtils;
   import spark.components.Group;
   import spark.components.supportClasses.SkinnableComponent;
   
   public class LargeDetailComponent extends SkinnableComponent
   {
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!(_loc1_ && LargeDetailComponent))
      {
         _skinParts = {
            "image":true,
            "amountLabel":false,
            "permissionFeatureButton":false,
            "sizeLabel":false,
            "bottomStickerComponent":false,
            "checkmark":false,
            "itemLabel":false,
            "backgroundPrint":false
         };
      }
      
      private var _itemIndex:int;
      
      private var _data:Object;
      
      private var _showBottomSticker:Boolean = true;
      
      private var _buttonInfos:CenterItemDataVo;
      
      public var image:BriskImageDynaLib;
      
      public var backgroundPrint:BriskImageDynaLib;
      
      public var bottomStickerComponent:Group;
      
      public var itemLabel:LocaLabel;
      
      public var amountLabel:LocaLabel;
      
      public var sizeLabel:LocaLabel;
      
      public var checkmark:BriskImageDynaLib;
      
      public var permissionFeatureButton:DynamicImageButton;
      
      private var _activeTextFlowString:String;
      
      public function LargeDetailComponent()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || Boolean(this))
         {
            super();
         }
      }
      
      public function get itemIndex() : int
      {
         return this._itemIndex;
      }
      
      public function set data(param1:Object) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:BlueprintVo = null;
         if(_loc3_)
         {
            this._data = param1;
            if(!_loc4_)
            {
               §§push(this._data is BlueprintVo);
               if(!_loc4_)
               {
                  if(§§pop())
                  {
                     if(_loc3_ || _loc3_)
                     {
                        _loc2_ = this._data as BlueprintVo;
                        if(_loc3_ || Boolean(this))
                        {
                           §§push(_loc2_.locked);
                           if(!(_loc4_ && Boolean(param1)))
                           {
                              if(§§pop())
                              {
                                 if(!_loc4_)
                                 {
                                    setStyle("skinClass",LargeDetailComponentLockedSkin);
                                    if(!(_loc4_ && Boolean(param1)))
                                    {
                                       §§push(this);
                                       §§push(LocaUtils);
                                       §§push("rcl.booklayer.architect");
                                       §§push("rcl.booklayer.architect.requiredLevel");
                                       §§push("<font size=\'18\'>");
                                       if(_loc3_ || Boolean(param1))
                                       {
                                          §§push(§§pop() + _loc2_.unlockLvl);
                                          if(!(_loc4_ && _loc3_))
                                          {
                                             addr00c5:
                                             §§push(§§pop() + "</font>");
                                          }
                                          §§pop()._activeTextFlowString = §§pop().getString(§§pop(),§§pop(),null);
                                          if(!(_loc3_ || _loc3_))
                                          {
                                             §§goto(addr0143);
                                          }
                                          §§goto(addr0249);
                                       }
                                       §§goto(addr00c5);
                                    }
                                    §§goto(addr0249);
                                 }
                                 §§goto(addr015c);
                              }
                              else
                              {
                                 §§push(_loc2_.permission.permissionsLeft > 0);
                                 if(!(_loc4_ && Boolean(_loc2_)))
                                 {
                                    var _temp_10:* = §§pop();
                                    §§push(_temp_10);
                                    if(_temp_10)
                                    {
                                       if(!_loc4_)
                                       {
                                          addr0112:
                                          §§pop();
                                          if(_loc3_)
                                          {
                                             §§goto(addr0132);
                                          }
                                          §§goto(addr0143);
                                       }
                                    }
                                    addr0132:
                                    §§push(_loc2_.state == BlueprintVo.STATE_DOESNT_NEED_PERMISSION);
                                    if(!(_loc4_ && Boolean(_loc2_)))
                                    {
                                       addr0131:
                                       §§push(!§§pop());
                                    }
                                    if(§§pop())
                                    {
                                       if(_loc3_ || Boolean(_loc2_))
                                       {
                                          addr0143:
                                          setStyle("skinClass",LargeDetailComponentPermissionAvailableSkin);
                                          if(!(_loc4_ && Boolean(param1)))
                                          {
                                             addr015c:
                                             this._activeTextFlowString = _loc2_.buildPermissionAmount.toString();
                                             if(_loc3_)
                                             {
                                                addr0249:
                                                invalidateProperties();
                                             }
                                          }
                                          else
                                          {
                                             addr018a:
                                             this._activeTextFlowString = "";
                                             if(!_loc4_)
                                             {
                                                §§goto(addr0249);
                                             }
                                          }
                                          §§goto(addr024e);
                                       }
                                       §§goto(addr0249);
                                    }
                                    else
                                    {
                                       setStyle("skinClass",LargeDetailComponentNoPermissionAvailableSkin);
                                       if(_loc3_ || Boolean(_loc2_))
                                       {
                                          §§goto(addr018a);
                                       }
                                    }
                                    §§goto(addr024e);
                                 }
                                 §§goto(addr0131);
                              }
                              return;
                           }
                           §§goto(addr0112);
                        }
                        §§goto(addr015c);
                     }
                     else
                     {
                        addr01dc:
                        addr01e7:
                        if((this._data as MixedItemTypesVo).specialHighlighting)
                        {
                           if(_loc3_)
                           {
                              addr01f0:
                              setStyle("skinClass",LargeDetailComponentPremiumSkin);
                              if(!_loc3_)
                              {
                                 addr023e:
                                 setStyle("skinClass",LargeDetailComponentGoodSkin);
                              }
                           }
                        }
                        else
                        {
                           setStyle("skinClass",LargeDetailComponentNormalSkin);
                           if(!_loc3_)
                           {
                              §§goto(addr023e);
                           }
                        }
                        §§goto(addr0249);
                     }
                  }
                  else
                  {
                     §§push(this._data is MixedItemTypesVo);
                     if(_loc3_)
                     {
                        addr01a7:
                        if(§§pop())
                        {
                           if(!_loc4_)
                           {
                              §§push((this._data as MixedItemTypesVo).type);
                              if(_loc3_)
                              {
                                 §§push(MixedItemTypesVo.PLAYFIELDITEM);
                                 if(_loc3_ || Boolean(param1))
                                 {
                                    if(§§pop() == §§pop())
                                    {
                                       if(_loc3_)
                                       {
                                          §§goto(addr01dc);
                                       }
                                       §§goto(addr023e);
                                    }
                                    else
                                    {
                                       addr0234:
                                       addr022e:
                                       if((this._data as MixedItemTypesVo).type == MixedItemTypesVo.GOOD)
                                       {
                                          if(!_loc4_)
                                          {
                                             §§goto(addr023e);
                                          }
                                       }
                                    }
                                    §§goto(addr0249);
                                 }
                                 §§goto(addr0234);
                              }
                              §§goto(addr022e);
                           }
                        }
                        §§goto(addr0249);
                     }
                  }
                  §§goto(addr01e7);
               }
               §§goto(addr01a7);
            }
            §§goto(addr01f0);
         }
         §§goto(addr0249);
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc1_:BlueprintVo = null;
         var _loc2_:* = null;
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            super.commitProperties();
            if(!(_loc3_ && _loc3_))
            {
               if(this._data)
               {
                  if(_loc4_)
                  {
                     §§push(this._data is BlueprintVo);
                     if(_loc4_)
                     {
                        if(§§pop())
                        {
                           if(!_loc3_)
                           {
                              _loc1_ = this._data as BlueprintVo;
                              if(_loc4_)
                              {
                                 §§push(this.image);
                                 if(_loc4_)
                                 {
                                    §§pop().dynaLibName = ArchitecturalBookProxy.getItemIconLibByConfigPlayfieldItemDTO(_loc1_.configObj);
                                    if(_loc4_)
                                    {
                                       addr0094:
                                       §§push(this.image);
                                       §§push("FieldItem_");
                                       if(!_loc3_)
                                       {
                                          §§push(§§pop() + _loc1_.configObj.gfxId);
                                          if(_loc4_)
                                          {
                                             §§push(§§pop() + "_level1_big");
                                          }
                                       }
                                       §§pop().dynaBmpSourceName = §§pop();
                                       if(!_loc3_)
                                       {
                                          §§push(this.sizeLabel);
                                          if(_loc4_ || _loc3_)
                                          {
                                             if(§§pop())
                                             {
                                                if(!(_loc3_ && Boolean(this)))
                                                {
                                                   addr00dc:
                                                   §§push(this.sizeLabel);
                                                   §§push(_loc1_.configObj.sizeX + "x");
                                                   if(!(_loc3_ && Boolean(_loc1_)))
                                                   {
                                                      §§push(§§pop() + _loc1_.configObj.sizeY);
                                                   }
                                                   §§pop().text = §§pop();
                                                   if(_loc4_)
                                                   {
                                                      addr0104:
                                                      §§push(this.showBottomSticker);
                                                      if(_loc4_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               §§push(_loc1_.locked);
                                                               if(!_loc3_)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     if(!_loc3_)
                                                                     {
                                                                        §§push(this.amountLabel);
                                                                        if(!_loc3_)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              if(_loc4_)
                                                                              {
                                                                                 addr0141:
                                                                                 this.amountLabel.text = this._activeTextFlowString;
                                                                                 if(!(_loc3_ && Boolean(_loc2_)))
                                                                                 {
                                                                                    addr0154:
                                                                                    §§push(this.itemLabel);
                                                                                    if(_loc4_ || Boolean(_loc2_))
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             §§push(_loc1_.permission);
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                §§push(§§pop().permissionsLeft);
                                                                                                if(!(_loc3_ && Boolean(_loc1_)))
                                                                                                {
                                                                                                   §§push(0);
                                                                                                   if(!(_loc3_ && Boolean(_loc2_)))
                                                                                                   {
                                                                                                      §§push(§§pop() > §§pop());
                                                                                                      if(_loc4_)
                                                                                                      {
                                                                                                         var _temp_11:* = §§pop();
                                                                                                         §§push(_temp_11);
                                                                                                         if(_temp_11)
                                                                                                         {
                                                                                                            if(_loc4_)
                                                                                                            {
                                                                                                               §§pop();
                                                                                                               if(_loc4_ || _loc3_)
                                                                                                               {
                                                                                                                  §§push(_loc1_.state);
                                                                                                                  if(_loc4_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() == BlueprintVo.STATE_DOESNT_NEED_PERMISSION);
                                                                                                                     if(!_loc3_)
                                                                                                                     {
                                                                                                                        §§push(!§§pop());
                                                                                                                        if(_loc4_ || Boolean(_loc1_))
                                                                                                                        {
                                                                                                                           addr01de:
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              if(_loc4_)
                                                                                                                              {
                                                                                                                                 §§push(_loc1_.hasConstructionSteps);
                                                                                                                                 if(!_loc3_)
                                                                                                                                 {
                                                                                                                                    addr01f1:
                                                                                                                                    if(§§pop())
                                                                                                                                    {
                                                                                                                                       if(!(_loc3_ && Boolean(_loc1_)))
                                                                                                                                       {
                                                                                                                                          §§push("construct");
                                                                                                                                          if(_loc4_ || Boolean(_loc2_))
                                                                                                                                          {
                                                                                                                                             _loc2_ = §§pop();
                                                                                                                                             if(!_loc3_)
                                                                                                                                             {
                                                                                                                                                addr023e:
                                                                                                                                                §§push(_loc1_.specialHighlighting);
                                                                                                                                                if(_loc4_)
                                                                                                                                                {
                                                                                                                                                   addr0248:
                                                                                                                                                   if(§§pop())
                                                                                                                                                   {
                                                                                                                                                      if(_loc4_)
                                                                                                                                                      {
                                                                                                                                                         addr0252:
                                                                                                                                                         §§push(this.itemLabel);
                                                                                                                                                         if(!(_loc3_ && Boolean(this)))
                                                                                                                                                         {
                                                                                                                                                            §§push(LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.permissionsPremium"));
                                                                                                                                                            if(_loc4_)
                                                                                                                                                            {
                                                                                                                                                               §§pop().text = §§pop();
                                                                                                                                                               if(!(_loc3_ && Boolean(_loc2_)))
                                                                                                                                                               {
                                                                                                                                                                  addr0285:
                                                                                                                                                                  §§push(_loc2_ + "Premium");
                                                                                                                                                                  if(!_loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     _loc2_ = §§pop();
                                                                                                                                                                     if(!_loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        addr02d9:
                                                                                                                                                                        skin.currentState = _loc2_;
                                                                                                                                                                        if(!(_loc4_ || Boolean(this)))
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr03a2);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr03b6);
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        addr0333:
                                                                                                                                                                        addr0337:
                                                                                                                                                                        if(_loc1_.specialHighlighting)
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              addr0340:
                                                                                                                                                                              §§push("premium");
                                                                                                                                                                              if(!_loc3_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr0348:
                                                                                                                                                                                 _loc2_ = §§pop();
                                                                                                                                                                                 if(!_loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr034e:
                                                                                                                                                                                    addr0359:
                                                                                                                                                                                    addr0357:
                                                                                                                                                                                    addr0352:
                                                                                                                                                                                    if(_loc1_.permission.config.initialPermissions == -1)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc3_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr0362);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr03a2);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr03b6);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr0393);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr03b6);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr034e);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     addr0325:
                                                                                                                                                                     _loc2_ = §§pop();
                                                                                                                                                                     if(!(_loc3_ && _loc3_))
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr0333);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  addr0362:
                                                                                                                                                                  §§push(this.itemLabel);
                                                                                                                                                                  if(_loc4_ || Boolean(_loc1_))
                                                                                                                                                                  {
                                                                                                                                                                     addr0380:
                                                                                                                                                                     §§pop().text = LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.unlimitedPermissions");
                                                                                                                                                                     addr0374:
                                                                                                                                                                     if(!(_loc3_ && Boolean(_loc2_)))
                                                                                                                                                                     {
                                                                                                                                                                        addr0393:
                                                                                                                                                                        _loc2_ = "unlimited";
                                                                                                                                                                        addr038f:
                                                                                                                                                                        if(_loc4_ || _loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           addr03a2:
                                                                                                                                                                           skin.currentState = _loc2_;
                                                                                                                                                                           if(!(_loc3_ && Boolean(_loc2_)))
                                                                                                                                                                           {
                                                                                                                                                                              addr03b6:
                                                                                                                                                                              this.bottomStickerComponent.toolTip = LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.detail.permissions");
                                                                                                                                                                              if(_loc3_ && Boolean(_loc1_))
                                                                                                                                                                              {
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr058b);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr03a2);
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     addr03dd:
                                                                                                                                                                     §§pop().textFlow = TextConverter.importToFlow(this._activeTextFlowString,TextConverter.TEXT_FIELD_HTML_FORMAT);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr058b);
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  addr0315:
                                                                                                                                                                  §§push("normal");
                                                                                                                                                                  if(!(_loc3_ && Boolean(_loc2_)))
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr0325);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr0348);
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr02ca);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr03dd);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr02d9);
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      §§push(this.itemLabel);
                                                                                                                                                      if(_loc4_)
                                                                                                                                                      {
                                                                                                                                                         §§push(LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.permissions"));
                                                                                                                                                         if(_loc4_ || Boolean(_loc1_))
                                                                                                                                                         {
                                                                                                                                                            addr02ca:
                                                                                                                                                            §§pop().text = §§pop();
                                                                                                                                                            if(!(_loc3_ && Boolean(this)))
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr02d9);
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr0340);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            addr030d:
                                                                                                                                                            §§pop().text = §§pop();
                                                                                                                                                            if(_loc4_)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr0315);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr03a2);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr0374);
                                                                                                                                                }
                                                                                                                                                §§goto(addr0337);
                                                                                                                                             }
                                                                                                                                             §§goto(addr0340);
                                                                                                                                          }
                                                                                                                                          §§goto(addr0348);
                                                                                                                                       }
                                                                                                                                       §§goto(addr038f);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§push("instant");
                                                                                                                                       if(_loc4_ || Boolean(_loc1_))
                                                                                                                                       {
                                                                                                                                          _loc2_ = §§pop();
                                                                                                                                          if(!(_loc3_ && Boolean(_loc1_)))
                                                                                                                                          {
                                                                                                                                             §§goto(addr023e);
                                                                                                                                          }
                                                                                                                                          §§goto(addr0252);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr0348);
                                                                                                                                 }
                                                                                                                                 §§goto(addr0337);
                                                                                                                              }
                                                                                                                              §§goto(addr03b6);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§push(this.itemLabel);
                                                                                                                              if(!_loc3_)
                                                                                                                              {
                                                                                                                                 §§push(LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.buyPermissions"));
                                                                                                                                 if(_loc4_)
                                                                                                                                 {
                                                                                                                                    §§goto(addr030d);
                                                                                                                                 }
                                                                                                                                 §§goto(addr0380);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr03dd);
                                                                                                                        }
                                                                                                                        §§goto(addr0337);
                                                                                                                     }
                                                                                                                     §§goto(addr01f1);
                                                                                                                  }
                                                                                                                  §§goto(addr0285);
                                                                                                               }
                                                                                                               §§goto(addr0252);
                                                                                                            }
                                                                                                            §§goto(addr0337);
                                                                                                         }
                                                                                                         §§goto(addr01de);
                                                                                                      }
                                                                                                      §§goto(addr0248);
                                                                                                   }
                                                                                                   §§goto(addr0359);
                                                                                                }
                                                                                                §§goto(addr0357);
                                                                                             }
                                                                                             §§goto(addr0352);
                                                                                          }
                                                                                          §§goto(addr058b);
                                                                                       }
                                                                                       §§goto(addr03b6);
                                                                                    }
                                                                                    §§goto(addr03dd);
                                                                                 }
                                                                                 §§goto(addr038f);
                                                                              }
                                                                              §§goto(addr0362);
                                                                           }
                                                                           §§goto(addr0154);
                                                                        }
                                                                        §§goto(addr0141);
                                                                     }
                                                                     §§goto(addr023e);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(this.itemLabel);
                                                                  }
                                                                  §§goto(addr03dd);
                                                               }
                                                               §§goto(addr0248);
                                                            }
                                                            §§goto(addr02d9);
                                                         }
                                                         §§goto(addr058b);
                                                      }
                                                      §§goto(addr0248);
                                                   }
                                                   §§goto(addr02d9);
                                                }
                                             }
                                             §§goto(addr0104);
                                          }
                                          §§goto(addr00dc);
                                       }
                                       §§goto(addr0340);
                                    }
                                    §§goto(addr038f);
                                 }
                                 §§goto(addr0094);
                              }
                           }
                           else
                           {
                              addr046e:
                              §§push(this.image);
                              if(_loc4_)
                              {
                                 §§push("FieldItem_");
                                 if(!_loc3_)
                                 {
                                    §§push((this._data as MixedItemTypesVo).gfxId);
                                    if(!(_loc3_ && Boolean(this)))
                                    {
                                       §§push(§§pop() + §§pop());
                                       if(_loc4_ || Boolean(_loc2_))
                                       {
                                          §§push(§§pop() + "_level1_big");
                                          if(_loc4_ || Boolean(this))
                                          {
                                             §§pop().dynaBmpSourceName = §§pop();
                                             if(!_loc3_)
                                             {
                                                §§push(this.sizeLabel);
                                                if(!(_loc3_ && _loc3_))
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(_loc4_ || Boolean(_loc2_))
                                                      {
                                                         addr04e7:
                                                         addr04e3:
                                                         §§push(this.sizeLabel);
                                                         §§push((this._data as MixedItemTypesVo).configItem.sizeX + "x");
                                                         if(_loc4_ || Boolean(_loc1_))
                                                         {
                                                            §§push(§§pop() + (this._data as MixedItemTypesVo).configItem.sizeY);
                                                         }
                                                         §§pop().text = §§pop();
                                                         if(_loc3_)
                                                         {
                                                            addr0569:
                                                            addr0589:
                                                            addr056d:
                                                            §§push(this.image);
                                                            §§push("large_");
                                                            if(!(_loc3_ && _loc3_))
                                                            {
                                                               addr057d:
                                                               addr0588:
                                                               §§push(§§pop() + (this._data as MixedItemTypesVo).gfxId);
                                                            }
                                                            §§pop().dynaBmpSourceName = §§pop();
                                                         }
                                                         §§goto(addr058b);
                                                      }
                                                      else
                                                      {
                                                         addr0543:
                                                         §§push(this.image);
                                                         if(!_loc3_)
                                                         {
                                                            addr0558:
                                                            §§push("gui_popups_largeGoodIcons");
                                                            if(_loc4_)
                                                            {
                                                               addr0561:
                                                               §§pop().dynaLibName = §§pop();
                                                               if(_loc4_)
                                                               {
                                                                  §§goto(addr0569);
                                                               }
                                                               §§goto(addr058b);
                                                            }
                                                            §§goto(addr0589);
                                                         }
                                                      }
                                                      §§goto(addr056d);
                                                   }
                                                   §§goto(addr058b);
                                                }
                                                §§goto(addr04e7);
                                             }
                                             §§goto(addr058b);
                                          }
                                       }
                                       §§goto(addr057d);
                                    }
                                    §§goto(addr0588);
                                 }
                                 §§goto(addr0561);
                              }
                              §§goto(addr0558);
                           }
                        }
                        else
                        {
                           addr03fd:
                           if(this._data is MixedItemTypesVo)
                           {
                              if(_loc4_)
                              {
                                 addr0407:
                                 §§push((this._data as MixedItemTypesVo).type);
                                 if(!(_loc3_ && Boolean(this)))
                                 {
                                    §§push(MixedItemTypesVo.PLAYFIELDITEM);
                                    if(!(_loc3_ && Boolean(_loc1_)))
                                    {
                                       if(§§pop() == §§pop())
                                       {
                                          if(_loc4_)
                                          {
                                             §§push(this.image);
                                             if(_loc4_ || Boolean(this))
                                             {
                                                §§pop().dynaLibName = ArchitecturalBookProxy.getItemIconLibByConfigPlayfieldItemDTO((this._data as MixedItemTypesVo).configItem);
                                                if(!(_loc3_ && Boolean(this)))
                                                {
                                                   §§goto(addr046e);
                                                }
                                                §§goto(addr0569);
                                             }
                                             §§goto(addr0558);
                                          }
                                       }
                                       else
                                       {
                                          addr0531:
                                          addr052b:
                                          if((this._data as MixedItemTypesVo).type == MixedItemTypesVo.GOOD)
                                          {
                                             if(_loc4_ || Boolean(_loc2_))
                                             {
                                                §§goto(addr0543);
                                             }
                                             §§goto(addr0569);
                                          }
                                       }
                                       §§goto(addr058b);
                                    }
                                    §§goto(addr0531);
                                 }
                                 §§goto(addr052b);
                              }
                           }
                        }
                        §§goto(addr058b);
                     }
                     §§goto(addr03fd);
                  }
                  §§goto(addr0407);
               }
            }
            addr058b:
            return;
         }
         §§goto(addr04e3);
      }
      
      public function set itemIndex(param1:int) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            if(this._itemIndex != param1)
            {
               if(_loc2_)
               {
                  this._itemIndex = param1;
                  if(_loc2_ || _loc2_)
                  {
                     addr0044:
                     invalidateProperties();
                  }
                  §§goto(addr0049);
               }
               §§goto(addr0044);
            }
         }
         addr0049:
      }
      
      override protected function partAdded(param1:String, param2:Object) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!(_loc3_ && Boolean(param2)))
         {
            super.partAdded(param1,param2);
            if(!_loc3_)
            {
               if(param2 == this.image)
               {
                  if(!(_loc3_ && Boolean(param2)))
                  {
                     §§push(this.image);
                     if(_loc4_ || Boolean(this))
                     {
                        §§push(false);
                        if(!_loc3_)
                        {
                           §§pop().mouseChildren = §§pop();
                           if(_loc4_ || Boolean(this))
                           {
                              addr0071:
                              this.image.mouseEnabled = false;
                              addr0070:
                              if(_loc4_)
                              {
                                 addr007a:
                                 if(param2 == this.sizeLabel)
                                 {
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       if(this._data)
                                       {
                                          if(!_loc3_)
                                          {
                                             §§push(this._data is BlueprintVo);
                                             if(!(_loc3_ && Boolean(param2)))
                                             {
                                                if(§§pop())
                                                {
                                                   if(_loc4_)
                                                   {
                                                      §§push(this.sizeLabel);
                                                      if(_loc4_ || _loc3_)
                                                      {
                                                         §§push((this._data as BlueprintVo).configObj.sizeX);
                                                         if(_loc4_ || Boolean(param1))
                                                         {
                                                            §§push("x");
                                                            if(!_loc3_)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               if(!(_loc3_ && Boolean(param1)))
                                                               {
                                                                  §§push((this._data as BlueprintVo).configObj.sizeY);
                                                                  if(!_loc3_)
                                                                  {
                                                                     §§push(§§pop() + §§pop());
                                                                     if(!(_loc3_ && Boolean(param1)))
                                                                     {
                                                                        addr012c:
                                                                        §§pop().text = §§pop();
                                                                        if(_loc3_ && _loc3_)
                                                                        {
                                                                           addr01d1:
                                                                           addr01cd:
                                                                           if(this.showBottomSticker)
                                                                           {
                                                                              if(_loc4_)
                                                                              {
                                                                                 this.bottomStickerComponent.includeInLayout = true;
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    addr01f5:
                                                                                    this.bottomStickerComponent.visible = true;
                                                                                    if(_loc3_ && Boolean(this))
                                                                                    {
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr0219:
                                                                                    this.bottomStickerComponent.visible = false;
                                                                                 }
                                                                                 §§goto(addr0220);
                                                                              }
                                                                              §§goto(addr0219);
                                                                           }
                                                                           else
                                                                           {
                                                                              this.bottomStickerComponent.includeInLayout = false;
                                                                              if(!_loc3_)
                                                                              {
                                                                                 §§goto(addr0219);
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr0220);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr01a4:
                                                                        §§pop().text = §§pop() + (this._data as MixedItemTypesVo).configItem.sizeY;
                                                                        §§goto(addr01a3);
                                                                     }
                                                                  }
                                                                  addr01a3:
                                                                  §§goto(addr0195);
                                                               }
                                                               §§goto(addr012c);
                                                            }
                                                            else
                                                            {
                                                               addr018e:
                                                               §§push(§§pop() + §§pop());
                                                               if(_loc4_)
                                                               {
                                                                  addr0195:
                                                                  if(_loc3_ && _loc3_)
                                                                  {
                                                                     §§goto(addr01f5);
                                                                  }
                                                                  §§goto(addr0220);
                                                               }
                                                            }
                                                            §§goto(addr01a4);
                                                         }
                                                         else
                                                         {
                                                            addr018b:
                                                            §§push("x");
                                                         }
                                                         §§goto(addr018e);
                                                      }
                                                      else
                                                      {
                                                         addr017d:
                                                         §§push((this._data as MixedItemTypesVo).configItem.sizeX);
                                                      }
                                                      §§goto(addr018b);
                                                   }
                                                   else
                                                   {
                                                      addr015f:
                                                      if((this._data as MixedItemTypesVo).type == MixedItemTypesVo.PLAYFIELDITEM)
                                                      {
                                                         if(_loc4_)
                                                         {
                                                            addr0179:
                                                            §§goto(addr017d);
                                                            §§push(this.sizeLabel);
                                                         }
                                                         §§goto(addr01f5);
                                                      }
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(this._data is MixedItemTypesVo);
                                                   if(_loc4_)
                                                   {
                                                      addr014d:
                                                      if(§§pop())
                                                      {
                                                         if(_loc4_ || Boolean(this))
                                                         {
                                                            §§goto(addr015f);
                                                         }
                                                         §§goto(addr0179);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr01d1);
                                                   }
                                                }
                                                §§goto(addr0220);
                                             }
                                             §§goto(addr014d);
                                          }
                                       }
                                       §§goto(addr0220);
                                    }
                                    §§goto(addr015f);
                                 }
                                 else if(param2 == this.bottomStickerComponent)
                                 {
                                    if(!(_loc3_ && Boolean(param2)))
                                    {
                                       §§goto(addr01cd);
                                    }
                                    §§goto(addr01f5);
                                 }
                              }
                           }
                           §§goto(addr0220);
                        }
                        §§goto(addr0071);
                     }
                     §§goto(addr0070);
                  }
                  §§goto(addr0179);
               }
               §§goto(addr007a);
            }
            addr0220:
            return;
         }
         §§goto(addr007a);
      }
      
      private function handlePermissionFeatureClick(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(param1))
         {
            dispatchEvent(new Event("permissionFeatureClick"));
         }
      }
      
      public function get showBottomSticker() : Boolean
      {
         return this._showBottomSticker;
      }
      
      public function set showBottomSticker(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            this._showBottomSticker = param1;
            if(!_loc2_)
            {
               invalidateProperties();
            }
         }
      }
      
      public function set buttonInfos(param1:CenterItemDataVo) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            this._buttonInfos = param1;
         }
      }
   }
}

