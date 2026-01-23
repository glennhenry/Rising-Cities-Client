package net.bigpoint.cityrama.view.architectBook.ui.components
{
   import mx.core.UIComponent;
   import net.bigpoint.cityrama.model.architecturalBook.ArchitecturalBookProxy;
   import net.bigpoint.cityrama.model.architecturalBook.vo.BlueprintVo;
   import net.bigpoint.cityrama.model.level.vo.MixedItemTypesVo;
   import net.bigpoint.cityrama.view.architectBook.ui.skins.GridItemEmptySkin;
   import net.bigpoint.cityrama.view.architectBook.ui.skins.GridItemGoodSkin;
   import net.bigpoint.cityrama.view.architectBook.ui.skins.GridItemLockedSkin;
   import net.bigpoint.cityrama.view.architectBook.ui.skins.GridItemNormalSkin;
   import net.bigpoint.cityrama.view.architectBook.ui.skins.GridItemPremiumSkin;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.RichText;
   import spark.components.supportClasses.ButtonBase;
   
   public class GridItemComponent extends ButtonBase
   {
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!(_loc1_ && _loc1_))
      {
         _skinParts = {
            "stickyTape":false,
            "image":false,
            "infoIcon":false,
            "costGroup":false,
            "iconDisplay":false,
            "currencyIcon":false,
            "itemLabel":false,
            "labelDisplay":false,
            "backgroundPrint":false,
            "newIcon":false
         };
      }
      
      private var _itemIndex:int;
      
      private var _data:*;
      
      private var _showPrice:Boolean = true;
      
      private var _showInfoIcon:Boolean = true;
      
      private var _showStickyTape:Boolean = true;
      
      private var _isDirty:Boolean;
      
      private var _showNewIcon:Boolean = false;
      
      public var image:BriskImageDynaLib;
      
      public var backgroundPrint:BriskImageDynaLib;
      
      public var itemLabel:RichText;
      
      public var costGroup:Group;
      
      public var infoIcon:BriskImageDynaLib;
      
      public var newIcon:BriskImageDynaLib;
      
      public var currencyIcon:BriskImageDynaLib;
      
      public var stickyTape:UIComponent;
      
      public function GridItemComponent()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public function get itemIndex() : int
      {
         return this._itemIndex;
      }
      
      public function set data(param1:*) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            if(param1 == null)
            {
               if(!(_loc2_ && _loc2_))
               {
                  setStyle("skinClass",GridItemEmptySkin);
                  if(_loc3_ || _loc3_)
                  {
                     this._isDirty = true;
                     if(!_loc2_)
                     {
                        this._data = param1;
                        if(_loc3_)
                        {
                           invalidateProperties();
                           if(_loc3_ || _loc3_)
                           {
                              addr0072:
                              §§push(RandomUtilities.isEqual(param1,this._data));
                              if(_loc3_ || _loc3_)
                              {
                                 if(!§§pop())
                                 {
                                    if(!_loc2_)
                                    {
                                       this._isDirty = true;
                                       if(_loc3_)
                                       {
                                          this._data = param1;
                                          if(_loc3_)
                                          {
                                             §§push(this._data is BlueprintVo);
                                             if(_loc3_ || param1)
                                             {
                                                if(§§pop())
                                                {
                                                   if(_loc3_ || param1)
                                                   {
                                                      §§push((this._data as BlueprintVo).locked);
                                                      if(_loc3_ || _loc2_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(_loc3_)
                                                            {
                                                               setStyle("skinClass",GridItemLockedSkin);
                                                               if(_loc2_)
                                                               {
                                                               }
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§push((this._data as BlueprintVo).specialHighlighting);
                                                            if(!_loc2_)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  if(_loc3_)
                                                                  {
                                                                     addr0129:
                                                                     setStyle("skinClass",GridItemPremiumSkin);
                                                                     if(_loc2_)
                                                                     {
                                                                     }
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  setStyle("skinClass",GridItemNormalSkin);
                                                                  if(_loc2_)
                                                                  {
                                                                     addr019a:
                                                                     addr01a5:
                                                                     if((this._data as MixedItemTypesVo).specialHighlighting)
                                                                     {
                                                                        if(_loc3_ || _loc2_)
                                                                        {
                                                                           setStyle("skinClass",GridItemPremiumSkin);
                                                                           if(_loc2_)
                                                                           {
                                                                           }
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        setStyle("skinClass",GridItemNormalSkin);
                                                                        if(_loc2_)
                                                                        {
                                                                           §§goto(addr020e);
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            else
                                                            {
                                                               addr015e:
                                                               if(§§pop())
                                                               {
                                                                  if(!_loc2_)
                                                                  {
                                                                     §§push((this._data as MixedItemTypesVo).type);
                                                                     if(_loc3_ || Boolean(this))
                                                                     {
                                                                        §§push(MixedItemTypesVo.PLAYFIELDITEM);
                                                                        if(!_loc2_)
                                                                        {
                                                                           if(§§pop() == §§pop())
                                                                           {
                                                                              if(!(_loc2_ && _loc3_))
                                                                              {
                                                                                 §§goto(addr019a);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              addr01fd:
                                                                              addr01f7:
                                                                              if((this._data as MixedItemTypesVo).type == MixedItemTypesVo.GOOD)
                                                                              {
                                                                                 if(_loc3_ || Boolean(this))
                                                                                 {
                                                                                    §§goto(addr020e);
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr0226);
                                                                        }
                                                                        §§goto(addr01fd);
                                                                     }
                                                                     §§goto(addr01f7);
                                                                  }
                                                                  §§goto(addr020e);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr0226);
                                                      }
                                                      §§goto(addr015e);
                                                   }
                                                   §§goto(addr0129);
                                                }
                                                else
                                                {
                                                   §§push(this._data is MixedItemTypesVo);
                                                   if(_loc3_)
                                                   {
                                                      §§goto(addr015e);
                                                   }
                                                }
                                                §§goto(addr01a5);
                                             }
                                             §§goto(addr015e);
                                          }
                                       }
                                       addr020e:
                                       setStyle("skinClass",GridItemGoodSkin);
                                       if(_loc3_ || _loc2_)
                                       {
                                          addr0226:
                                          invalidateProperties();
                                       }
                                       §§goto(addr022b);
                                    }
                                    §§goto(addr019a);
                                 }
                                 §§goto(addr022b);
                              }
                              §§goto(addr01a5);
                           }
                           §§goto(addr0129);
                        }
                        addr022b:
                        return;
                     }
                     §§goto(addr020e);
                  }
               }
               §§goto(addr0226);
            }
            §§goto(addr0072);
         }
         §§goto(addr020e);
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc1_:BlueprintVo = null;
         if(_loc3_)
         {
            super.commitProperties();
            if(!_loc4_)
            {
               §§push(this._isDirty);
               if(!(_loc4_ && Boolean(_loc1_)))
               {
                  if(§§pop())
                  {
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        addr004d:
                        this._isDirty = false;
                        if(_loc3_)
                        {
                           §§goto(addr0057);
                        }
                        §§goto(addr0063);
                     }
                     addr0057:
                     addr005f:
                     if(this._data is BlueprintVo)
                     {
                        addr0063:
                        _loc1_ = this._data as BlueprintVo;
                        if(!(_loc4_ && Boolean(_loc1_)))
                        {
                           §§push(this.image);
                           if(!(_loc4_ && Boolean(this)))
                           {
                              if(§§pop())
                              {
                                 if(_loc3_)
                                 {
                                    §§push(this.image);
                                    if(_loc3_ || _loc3_)
                                    {
                                       §§pop().dynaLibName = ArchitecturalBookProxy.getItemIconLibByConfigPlayfieldItemDTO(_loc1_.configObj);
                                       if(_loc3_ || _loc2_)
                                       {
                                          addr00c7:
                                          §§push(this.image);
                                          §§push("FieldItem_");
                                          if(_loc3_)
                                          {
                                             §§push(§§pop() + _loc1_.configObj.gfxId);
                                             if(_loc3_ || Boolean(_loc1_))
                                             {
                                                addr00e4:
                                                §§push(§§pop() + "_small");
                                             }
                                             §§pop().dynaBmpSourceName = §§pop();
                                             if(!_loc4_)
                                             {
                                                addr00f0:
                                                if(!_loc1_.locked)
                                                {
                                                   if(_loc3_ || _loc3_)
                                                   {
                                                      addr0105:
                                                      if(this.itemLabel)
                                                      {
                                                         addr01a8:
                                                         §§push(_loc1_.state);
                                                         if(_loc3_)
                                                         {
                                                            var _loc2_:* = §§pop();
                                                            if(!(_loc4_ && _loc2_))
                                                            {
                                                               §§push(BlueprintVo.STATE_PERMISSION_AVAILABLE);
                                                               if(!_loc4_)
                                                               {
                                                                  §§push(_loc2_);
                                                                  if(!_loc4_)
                                                                  {
                                                                     if(§§pop() === §§pop())
                                                                     {
                                                                        if(!_loc4_)
                                                                        {
                                                                           addr01dd:
                                                                           §§push(0);
                                                                           if(_loc3_ || _loc3_)
                                                                           {
                                                                           }
                                                                           addr02d5:
                                                                           if(!(_loc4_ && _loc2_))
                                                                           {
                                                                              loop0:
                                                                              switch(§§pop())
                                                                              {
                                                                                 case 0:
                                                                                 case 1:
                                                                                    this.itemLabel.text = LocaUtils.getThousendSeperatedNumber(Math.abs(this._data.price));
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    addr0341:
                                                                                    §§push(this.newIcon);
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(!(_loc4_ && _loc3_))
                                                                                          {
                                                                                             this._showNewIcon = _loc1_.isItemNew;
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                          }
                                                                                          addr036a:
                                                                                          if(_loc1_.isItemNew == true)
                                                                                          {
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                §§push(this.newIcon);
                                                                                                if(_loc3_ || Boolean(_loc1_))
                                                                                                {
                                                                                                   addr038a:
                                                                                                   §§push(this.newIcon);
                                                                                                   if(_loc3_ || Boolean(this))
                                                                                                   {
                                                                                                      §§push(true);
                                                                                                      if(!_loc4_)
                                                                                                      {
                                                                                                         var _temp_15:* = §§pop();
                                                                                                         §§push(_temp_15);
                                                                                                         §§push(_temp_15);
                                                                                                         if(!_loc4_)
                                                                                                         {
                                                                                                            _loc2_ = §§pop();
                                                                                                            if(_loc3_ || Boolean(_loc1_))
                                                                                                            {
                                                                                                               §§pop().includeInLayout = §§pop();
                                                                                                               if(!(_loc4_ && _loc3_))
                                                                                                               {
                                                                                                                  §§push(_loc2_);
                                                                                                                  if(!_loc4_)
                                                                                                                  {
                                                                                                                     if(!(_loc4_ && Boolean(this)))
                                                                                                                     {
                                                                                                                        §§pop().visible = §§pop();
                                                                                                                        if(_loc4_ && _loc2_)
                                                                                                                        {
                                                                                                                           break;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        addr0410:
                                                                                                                        §§pop().visible = §§pop();
                                                                                                                        if(!(_loc3_ || _loc3_))
                                                                                                                        {
                                                                                                                           break;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr041f:
                                                                                                                     §§push(this.currencyIcon);
                                                                                                                     if(_loc3_)
                                                                                                                     {
                                                                                                                        if(!§§pop())
                                                                                                                        {
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        if(!_loc3_)
                                                                                                                        {
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        §§push(this.currencyIcon);
                                                                                                                        if(!(_loc4_ && Boolean(_loc1_)))
                                                                                                                        {
                                                                                                                           §§push(this.currencyIcon);
                                                                                                                           if(!(_loc4_ && _loc2_))
                                                                                                                           {
                                                                                                                              §§push(true);
                                                                                                                              if(!_loc4_)
                                                                                                                              {
                                                                                                                                 var _temp_23:* = §§pop();
                                                                                                                                 §§push(_temp_23);
                                                                                                                                 §§push(_temp_23);
                                                                                                                                 if(!_loc4_)
                                                                                                                                 {
                                                                                                                                    _loc2_ = §§pop();
                                                                                                                                    if(_loc3_)
                                                                                                                                    {
                                                                                                                                       §§pop().includeInLayout = §§pop();
                                                                                                                                       if(_loc3_)
                                                                                                                                       {
                                                                                                                                          §§push(_loc2_);
                                                                                                                                          if(_loc3_)
                                                                                                                                          {
                                                                                                                                             if(_loc3_)
                                                                                                                                             {
                                                                                                                                                §§pop().visible = §§pop();
                                                                                                                                                if(_loc3_)
                                                                                                                                                {
                                                                                                                                                   addr0594:
                                                                                                                                                   _loc2_ = _loc1_.state;
                                                                                                                                                   addr0590:
                                                                                                                                                   if(_loc3_)
                                                                                                                                                   {
                                                                                                                                                      §§push(BlueprintVo.STATE_DOESNT_NEED_PERMISSION);
                                                                                                                                                      if(!_loc4_)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc2_);
                                                                                                                                                         if(!_loc4_)
                                                                                                                                                         {
                                                                                                                                                            if(§§pop() === §§pop())
                                                                                                                                                            {
                                                                                                                                                               if(_loc3_)
                                                                                                                                                               {
                                                                                                                                                                  addr05b6:
                                                                                                                                                                  §§push(0);
                                                                                                                                                                  if(_loc3_)
                                                                                                                                                                  {
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  addr062a:
                                                                                                                                                                  §§push(2);
                                                                                                                                                                  if(_loc3_)
                                                                                                                                                                  {
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               §§push(BlueprintVo.STATE_PERMISSION_AVAILABLE);
                                                                                                                                                               if(_loc3_ || Boolean(this))
                                                                                                                                                               {
                                                                                                                                                                  addr05d4:
                                                                                                                                                                  §§push(_loc2_);
                                                                                                                                                                  if(_loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     addr05da:
                                                                                                                                                                     if(§§pop() === §§pop())
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc4_ && Boolean(_loc1_)))
                                                                                                                                                                        {
                                                                                                                                                                           addr05ec:
                                                                                                                                                                           §§push(1);
                                                                                                                                                                           if(_loc4_)
                                                                                                                                                                           {
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr062a);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        §§push(BlueprintVo.STATE_FULLY_CONSTRUCTED_AVAILABLE);
                                                                                                                                                                        if(_loc3_ || Boolean(_loc1_))
                                                                                                                                                                        {
                                                                                                                                                                           addr060b:
                                                                                                                                                                           §§push(_loc2_);
                                                                                                                                                                           if(_loc3_ || Boolean(_loc2_))
                                                                                                                                                                           {
                                                                                                                                                                              addr0619:
                                                                                                                                                                              if(§§pop() === §§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc3_ || Boolean(this))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr062a);
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    addr066f:
                                                                                                                                                                                    §§push(4);
                                                                                                                                                                                    if(_loc4_)
                                                                                                                                                                                    {
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 addr0689:
                                                                                                                                                                                 switch(§§pop())
                                                                                                                                                                                 {
                                                                                                                                                                                    case 0:
                                                                                                                                                                                    case 1:
                                                                                                                                                                                       §§push(this.currencyIcon);
                                                                                                                                                                                       if(_loc3_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push("cc_icon_small");
                                                                                                                                                                                          if(!_loc4_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§pop().dynaBmpSourceName = §§pop();
                                                                                                                                                                                             if(_loc3_ || Boolean(this))
                                                                                                                                                                                             {
                                                                                                                                                                                                addr04ab:
                                                                                                                                                                                                §§push(this.currencyIcon);
                                                                                                                                                                                                if(!_loc4_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push("gui_popups_paperPopup");
                                                                                                                                                                                                   if(!_loc4_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr04be:
                                                                                                                                                                                                      §§pop().dynaLibName = §§pop();
                                                                                                                                                                                                      if(_loc4_ && Boolean(this))
                                                                                                                                                                                                      {
                                                                                                                                                                                                      }
                                                                                                                                                                                                      break loop0;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr050f:
                                                                                                                                                                                                   §§pop().dynaLibName = §§pop();
                                                                                                                                                                                                   if(!(_loc4_ && Boolean(_loc2_)))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      break loop0;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr0545:
                                                                                                                                                                                                   §§push(this.currencyIcon);
                                                                                                                                                                                                   if(_loc4_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      break;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr054f:
                                                                                                                                                                                                   §§push("gui_resources_icons");
                                                                                                                                                                                                }
                                                                                                                                                                                                else
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr052e:
                                                                                                                                                                                                   §§push("rc_icon_small");
                                                                                                                                                                                                   if(_loc3_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr0536:
                                                                                                                                                                                                      §§pop().dynaBmpSourceName = §§pop();
                                                                                                                                                                                                      if(!(_loc3_ || _loc3_))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         break loop0;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr0545);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§pop().dynaLibName = §§pop();
                                                                                                                                                                                                if(_loc4_ && Boolean(this))
                                                                                                                                                                                                {
                                                                                                                                                                                                }
                                                                                                                                                                                                break loop0;
                                                                                                                                                                                             }
                                                                                                                                                                                             addr04f5:
                                                                                                                                                                                             §§push(this.currencyIcon);
                                                                                                                                                                                             if(!_loc3_)
                                                                                                                                                                                             {
                                                                                                                                                                                                break;
                                                                                                                                                                                             }
                                                                                                                                                                                             addr04fe:
                                                                                                                                                                                             §§push("gui_popups_paperPopup");
                                                                                                                                                                                             if(!(_loc4_ && Boolean(_loc2_)))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr050f);
                                                                                                                                                                                             }
                                                                                                                                                                                             else
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr0536);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr0536);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr04be);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr054f);
                                                                                                                                                                                    case 2:
                                                                                                                                                                                       §§push(this.currencyIcon);
                                                                                                                                                                                       if(_loc4_)
                                                                                                                                                                                       {
                                                                                                                                                                                          break;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§push("button_icon_build");
                                                                                                                                                                                       if(_loc3_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§pop().dynaBmpSourceName = §§pop();
                                                                                                                                                                                          if(_loc4_ && Boolean(this))
                                                                                                                                                                                          {
                                                                                                                                                                                             break loop0;
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr04f5);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr0536);
                                                                                                                                                                                       break;
                                                                                                                                                                                    case 3:
                                                                                                                                                                                       §§push(this.currencyIcon);
                                                                                                                                                                                       if(!_loc4_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr052e);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr054f);
                                                                                                                                                                                    case 4:
                                                                                                                                                                                    default:
                                                                                                                                                                                       §§push(this.currencyIcon);
                                                                                                                                                                                 }
                                                                                                                                                                                 addr0573:
                                                                                                                                                                                 this.currencyIcon.includeInLayout = _loc2_ = false;
                                                                                                                                                                                 addr0578:
                                                                                                                                                                                 §§pop().visible = _loc2_;
                                                                                                                                                                                 addr0576:
                                                                                                                                                                                 addr0575:
                                                                                                                                                                                 if(_loc4_ && _loc2_)
                                                                                                                                                                                 {
                                                                                                                                                                                 }
                                                                                                                                                                                 break;
                                                                                                                                                                                 addr0687:
                                                                                                                                                                                 addr0572:
                                                                                                                                                                                 addr0571:
                                                                                                                                                                                 addr0570:
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(BlueprintVo.STATE_BUY_MORE_WITH_RC);
                                                                                                                                                                                 if(_loc3_ || _loc2_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr0648:
                                                                                                                                                                                    §§push(_loc2_);
                                                                                                                                                                                    if(_loc3_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr064e:
                                                                                                                                                                                       if(§§pop() === §§pop())
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc4_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(3);
                                                                                                                                                                                             if(_loc4_)
                                                                                                                                                                                             {
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr066f);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       else
                                                                                                                                                                                       {
                                                                                                                                                                                          addr066b:
                                                                                                                                                                                          addr066a:
                                                                                                                                                                                          if(BlueprintVo.STATE_NOT_AVAILABLE === _loc2_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr066f);
                                                                                                                                                                                          }
                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(5);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr0687);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr066b);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr066a);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr066f);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr064e);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr066a);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr0687);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr064e);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr066a);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr0687);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr05da);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr060b);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr066f);
                                                                                                                                                }
                                                                                                                                                §§goto(addr04ab);
                                                                                                                                             }
                                                                                                                                             §§goto(addr0578);
                                                                                                                                          }
                                                                                                                                          §§goto(addr0576);
                                                                                                                                       }
                                                                                                                                       §§goto(addr0575);
                                                                                                                                    }
                                                                                                                                    §§goto(addr0573);
                                                                                                                                 }
                                                                                                                                 §§goto(addr0572);
                                                                                                                              }
                                                                                                                              §§goto(addr0571);
                                                                                                                           }
                                                                                                                           §§goto(addr0570);
                                                                                                                        }
                                                                                                                        §§goto(addr04fe);
                                                                                                                     }
                                                                                                                     §§goto(addr054f);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     addr040e:
                                                                                                                  }
                                                                                                                  §§goto(addr0410);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  addr03ff:
                                                                                                                  §§push(_loc2_);
                                                                                                               }
                                                                                                               §§goto(addr040e);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               addr03fd:
                                                                                                               §§pop().includeInLayout = §§pop();
                                                                                                            }
                                                                                                            §§goto(addr03ff);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr03fc:
                                                                                                            _loc2_ = §§pop();
                                                                                                         }
                                                                                                         §§goto(addr03fd);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr03fb:
                                                                                                         var _temp_38:* = §§pop();
                                                                                                         §§push(_temp_38);
                                                                                                         §§push(_temp_38);
                                                                                                      }
                                                                                                      §§goto(addr03fc);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr03fa:
                                                                                                      §§push(false);
                                                                                                   }
                                                                                                   §§goto(addr03fb);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr03f6:
                                                                                                   §§push(this.newIcon);
                                                                                                }
                                                                                                §§goto(addr03fa);
                                                                                             }
                                                                                             §§goto(addr04f5);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§push(this.newIcon);
                                                                                          }
                                                                                          §§goto(addr03f6);
                                                                                       }
                                                                                       §§goto(addr041f);
                                                                                    }
                                                                                    §§goto(addr038a);
                                                                                    break;
                                                                                 case 2:
                                                                                    this.itemLabel.text = LocaUtils.getThousendSeperatedNumber(Math.abs(this._data.price));
                                                                                    if(!(_loc4_ && Boolean(this)))
                                                                                    {
                                                                                       §§goto(addr0341);
                                                                                    }
                                                                                    §§goto(addr0590);
                                                                                 case 3:
                                                                                    this.itemLabel.text = LocaUtils.getString("rcl.booklayer.architect.cards","rcl.booklayer.architect.cards.place");
                                                                                    if(_loc3_ || _loc3_)
                                                                                    {
                                                                                       §§goto(addr0341);
                                                                                    }
                                                                                    §§goto(addr036a);
                                                                                 case 4:
                                                                                 default:
                                                                                    this.itemLabel.text = "";
                                                                                    if(!(_loc4_ && _loc3_))
                                                                                    {
                                                                                       §§goto(addr0341);
                                                                                    }
                                                                                    §§goto(addr0545);
                                                                              }
                                                                              §§goto(addr082e);
                                                                           }
                                                                           §§goto(addr0689);
                                                                        }
                                                                        §§goto(addr05ec);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(BlueprintVo.STATE_DOESNT_NEED_PERMISSION);
                                                                        if(!(_loc4_ && _loc2_))
                                                                        {
                                                                           §§push(_loc2_);
                                                                           if(_loc3_)
                                                                           {
                                                                              if(§§pop() === §§pop())
                                                                              {
                                                                                 if(_loc3_ || Boolean(this))
                                                                                 {
                                                                                    §§push(1);
                                                                                    if(_loc4_)
                                                                                    {
                                                                                    }
                                                                                    §§goto(addr02d5);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr02b0:
                                                                                    §§push(4);
                                                                                    if(_loc3_ || Boolean(_loc1_))
                                                                                    {
                                                                                       §§goto(addr02d5);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr0687);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push(BlueprintVo.STATE_BUY_MORE_WITH_RC);
                                                                                 if(_loc3_ || Boolean(this))
                                                                                 {
                                                                                    addr023a:
                                                                                    §§push(_loc2_);
                                                                                    if(!(_loc4_ && Boolean(this)))
                                                                                    {
                                                                                       addr0249:
                                                                                       if(§§pop() === §§pop())
                                                                                       {
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             §§push(2);
                                                                                             if(_loc3_)
                                                                                             {
                                                                                                §§goto(addr02d5);
                                                                                             }
                                                                                             §§goto(addr0687);
                                                                                          }
                                                                                          §§goto(addr05ec);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§push(BlueprintVo.STATE_FULLY_CONSTRUCTED_AVAILABLE);
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             addr026a:
                                                                                             §§push(_loc2_);
                                                                                             if(_loc3_)
                                                                                             {
                                                                                                if(§§pop() === §§pop())
                                                                                                {
                                                                                                   if(_loc3_ || Boolean(this))
                                                                                                   {
                                                                                                      §§push(3);
                                                                                                      if(!_loc4_)
                                                                                                      {
                                                                                                         §§goto(addr02d5);
                                                                                                      }
                                                                                                      §§goto(addr0687);
                                                                                                   }
                                                                                                   §§goto(addr05b6);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§push(BlueprintVo.STATE_NOT_AVAILABLE);
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      §§push(_loc2_);
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         addr029f:
                                                                                                         if(§§pop() === §§pop())
                                                                                                         {
                                                                                                            if(_loc3_ || Boolean(_loc1_))
                                                                                                            {
                                                                                                               §§goto(addr02b0);
                                                                                                            }
                                                                                                            §§goto(addr05ec);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§push(5);
                                                                                                            if(!_loc4_)
                                                                                                            {
                                                                                                               §§goto(addr02d5);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr0687);
                                                                                                      }
                                                                                                      §§goto(addr064e);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr05d4);
                                                                                             }
                                                                                             §§goto(addr05da);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr0648);
                                                                                    }
                                                                                    §§goto(addr0619);
                                                                                 }
                                                                                 §§goto(addr026a);
                                                                              }
                                                                           }
                                                                           §§goto(addr0249);
                                                                        }
                                                                        §§goto(addr023a);
                                                                     }
                                                                  }
                                                                  §§goto(addr029f);
                                                               }
                                                               §§goto(addr060b);
                                                            }
                                                            §§goto(addr01dd);
                                                         }
                                                         §§goto(addr0594);
                                                      }
                                                      §§goto(addr0341);
                                                   }
                                                   §§goto(addr01a8);
                                                }
                                                else if(this.itemLabel)
                                                {
                                                   if(_loc3_)
                                                   {
                                                      this.itemLabel.text = Math.abs(this._data.unlockLvl).toString();
                                                      if(!(_loc4_ && Boolean(_loc1_)))
                                                      {
                                                         §§goto(addr0341);
                                                      }
                                                      §§goto(addr041f);
                                                   }
                                                   §§goto(addr036a);
                                                }
                                                §§goto(addr0341);
                                             }
                                             §§goto(addr0105);
                                          }
                                          §§goto(addr00e4);
                                       }
                                       §§goto(addr01a8);
                                    }
                                    §§goto(addr00c7);
                                 }
                                 §§goto(addr01a8);
                              }
                              §§goto(addr00f0);
                           }
                           §§goto(addr00c7);
                        }
                        §§goto(addr0105);
                     }
                     else if(this._data is MixedItemTypesVo)
                     {
                        if(_loc3_)
                        {
                           §§push((this._data as MixedItemTypesVo).type);
                           if(!(_loc4_ && _loc2_))
                           {
                              §§push(MixedItemTypesVo.PLAYFIELDITEM);
                              if(_loc3_ || Boolean(this))
                              {
                                 if(§§pop() == §§pop())
                                 {
                                    if(!(_loc4_ && Boolean(this)))
                                    {
                                       §§push(this.image);
                                       if(_loc3_ || _loc2_)
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc3_ || Boolean(_loc1_))
                                             {
                                                §§push(this.image);
                                                if(_loc3_ || _loc3_)
                                                {
                                                   §§pop().dynaLibName = ArchitecturalBookProxy.getItemIconLibByConfigPlayfieldItemDTO((this._data as MixedItemTypesVo).configItem);
                                                   if(_loc3_ || _loc3_)
                                                   {
                                                      addr0746:
                                                      §§push(this.image);
                                                      if(!_loc4_)
                                                      {
                                                         §§push("FieldItem_");
                                                         if(_loc3_)
                                                         {
                                                            §§push((this._data as MixedItemTypesVo).gfxId);
                                                            if(_loc3_ || Boolean(_loc1_))
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               if(!_loc4_)
                                                               {
                                                                  §§push("_small");
                                                                  if(!_loc4_)
                                                                  {
                                                                     §§push(§§pop() + §§pop());
                                                                     if(_loc3_)
                                                                     {
                                                                        §§pop().dynaBmpSourceName = §§pop();
                                                                        if(!_loc3_)
                                                                        {
                                                                           addr07f3:
                                                                           addr07ef:
                                                                           addr082c:
                                                                           §§push(this.image);
                                                                           §§push("ressource_");
                                                                           if(_loc3_ || _loc3_)
                                                                           {
                                                                              addr081a:
                                                                              addr080f:
                                                                              §§push(§§pop() + (this._data as MixedItemTypesVo).gfxId);
                                                                              if(_loc3_ || Boolean(_loc1_))
                                                                              {
                                                                                 addr0828:
                                                                                 addr082b:
                                                                                 §§push(§§pop() + "_medium");
                                                                              }
                                                                           }
                                                                           §§pop().dynaBmpSourceName = §§pop();
                                                                        }
                                                                        §§goto(addr082e);
                                                                     }
                                                                     §§goto(addr0828);
                                                                  }
                                                                  §§goto(addr082b);
                                                               }
                                                               §§goto(addr0828);
                                                            }
                                                            §§goto(addr081a);
                                                         }
                                                         §§goto(addr080f);
                                                      }
                                                      §§goto(addr07f3);
                                                   }
                                                   §§goto(addr07ef);
                                                }
                                                else
                                                {
                                                   addr07d7:
                                                   §§push("gui_resources_icons");
                                                   if(!_loc4_)
                                                   {
                                                      §§pop().dynaLibName = §§pop();
                                                      if(_loc3_ || Boolean(_loc1_))
                                                      {
                                                         §§goto(addr07ef);
                                                      }
                                                      §§goto(addr082e);
                                                   }
                                                }
                                                §§goto(addr082c);
                                             }
                                          }
                                          §§goto(addr082e);
                                       }
                                       §§goto(addr07d7);
                                    }
                                    §§goto(addr0746);
                                 }
                                 else
                                 {
                                    addr07a1:
                                    addr079b:
                                    if((this._data as MixedItemTypesVo).type == MixedItemTypesVo.GOOD)
                                    {
                                       if(_loc3_ || Boolean(_loc1_))
                                       {
                                          §§push(this.image);
                                          if(_loc3_)
                                          {
                                             if(§§pop())
                                             {
                                                if(!_loc4_)
                                                {
                                                   addr07c5:
                                                   §§push(this.image);
                                                   if(!(_loc4_ && _loc3_))
                                                   {
                                                      §§goto(addr07d7);
                                                   }
                                                   §§goto(addr07f3);
                                                }
                                             }
                                             §§goto(addr082e);
                                          }
                                          §§goto(addr07f3);
                                       }
                                       §§goto(addr07c5);
                                    }
                                 }
                                 §§goto(addr082e);
                              }
                              §§goto(addr07a1);
                           }
                           §§goto(addr079b);
                        }
                     }
                     §§goto(addr082e);
                  }
                  addr082e:
                  return;
               }
               §§goto(addr005f);
            }
            §§goto(addr004d);
         }
         §§goto(addr0057);
      }
      
      override protected function partAdded(param1:String, param2:Object) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc3_:BlueprintVo = null;
         if(!(_loc5_ && Boolean(_loc3_)))
         {
            super.partAdded(param1,param2);
            if(!_loc5_)
            {
               if(param2 == this.costGroup)
               {
                  if(_loc6_)
                  {
                     §§push(this._showPrice);
                     if(_loc6_ || Boolean(param1))
                     {
                        if(§§pop())
                        {
                           if(_loc6_ || Boolean(_loc3_))
                           {
                              addr006b:
                              this.costGroup.includeInLayout = true;
                              if(_loc6_)
                              {
                                 this.costGroup.visible = true;
                                 if(_loc6_)
                                 {
                                    addr00b3:
                                    if(param2 == this.infoIcon)
                                    {
                                       if(!_loc5_)
                                       {
                                          addr00c2:
                                          §§push(this._showInfoIcon);
                                          if(_loc6_)
                                          {
                                             if(§§pop())
                                             {
                                                if(!(_loc5_ && Boolean(this)))
                                                {
                                                   addr00de:
                                                   §§push(this.infoIcon);
                                                   if(!(_loc5_ && Boolean(_loc3_)))
                                                   {
                                                      §§push(true);
                                                      if(_loc6_)
                                                      {
                                                         §§pop().includeInLayout = §§pop();
                                                         if(_loc6_)
                                                         {
                                                            addr00ff:
                                                            §§push(this.infoIcon);
                                                            if(_loc6_)
                                                            {
                                                               §§push(true);
                                                               if(_loc6_ || Boolean(param2))
                                                               {
                                                                  §§pop().visible = §§pop();
                                                                  if(_loc5_ && Boolean(_loc3_))
                                                                  {
                                                                  }
                                                                  addr0170:
                                                                  if(param2 == this.newIcon)
                                                                  {
                                                                     if(_loc6_)
                                                                     {
                                                                        addr017f:
                                                                        addr0187:
                                                                        if(this._data is BlueprintVo)
                                                                        {
                                                                           if(_loc6_)
                                                                           {
                                                                              _loc3_ = this._data as BlueprintVo;
                                                                              if(_loc6_)
                                                                              {
                                                                                 if(_loc3_.isItemNew == true)
                                                                                 {
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       §§push(this.newIcon);
                                                                                       if(_loc6_ || Boolean(this))
                                                                                       {
                                                                                          §§push(this.newIcon);
                                                                                          if(_loc6_ || Boolean(param2))
                                                                                          {
                                                                                             §§push(true);
                                                                                             if(_loc6_ || Boolean(param2))
                                                                                             {
                                                                                                var _temp_12:* = §§pop();
                                                                                                §§push(_temp_12);
                                                                                                §§push(_temp_12);
                                                                                                if(_loc6_ || Boolean(param2))
                                                                                                {
                                                                                                   var _loc4_:* = §§pop();
                                                                                                   if(_loc6_ || Boolean(param2))
                                                                                                   {
                                                                                                      §§pop().includeInLayout = §§pop();
                                                                                                      if(_loc6_)
                                                                                                      {
                                                                                                         §§push(_loc4_);
                                                                                                         if(_loc6_ || Boolean(param1))
                                                                                                         {
                                                                                                            if(!(_loc5_ && Boolean(this)))
                                                                                                            {
                                                                                                               §§pop().visible = §§pop();
                                                                                                               if(_loc5_)
                                                                                                               {
                                                                                                               }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               addr024a:
                                                                                                               §§pop().visible = §§pop();
                                                                                                            }
                                                                                                            §§goto(addr0259);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr0248:
                                                                                                         }
                                                                                                         §§goto(addr024a);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr0246:
                                                                                                         §§push(_loc4_);
                                                                                                      }
                                                                                                      §§goto(addr0248);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr0244:
                                                                                                      §§pop().includeInLayout = §§pop();
                                                                                                   }
                                                                                                   §§goto(addr0246);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr0242:
                                                                                                   _loc4_ = §§pop();
                                                                                                }
                                                                                                §§goto(addr0244);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr0241:
                                                                                                var _temp_19:* = §§pop();
                                                                                                §§push(_temp_19);
                                                                                                §§push(_temp_19);
                                                                                             }
                                                                                             §§goto(addr0242);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr0240:
                                                                                             §§push(false);
                                                                                          }
                                                                                          §§goto(addr0241);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr023c:
                                                                                          §§push(this.newIcon);
                                                                                       }
                                                                                       §§goto(addr0240);
                                                                                    }
                                                                                    §§goto(addr0259);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§push(this.newIcon);
                                                                                 }
                                                                                 §§goto(addr023c);
                                                                              }
                                                                              addr0259:
                                                                              if(param2 == this.stickyTape)
                                                                              {
                                                                                 if(!(_loc5_ && Boolean(param1)))
                                                                                 {
                                                                                    addr0270:
                                                                                    this.stickyTape.includeInLayout = this.stickyTape.visible = this._showStickyTape;
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr0287);
                                                                        }
                                                                        §§goto(addr0259);
                                                                     }
                                                                     §§goto(addr0270);
                                                                  }
                                                                  §§goto(addr0259);
                                                               }
                                                               else
                                                               {
                                                                  addr0153:
                                                                  §§pop().includeInLayout = §§pop();
                                                                  if(!_loc5_)
                                                                  {
                                                                     addr0160:
                                                                     this.infoIcon.visible = false;
                                                                     addr015f:
                                                                     addr015b:
                                                                     if(_loc6_ || Boolean(param1))
                                                                     {
                                                                        §§goto(addr0170);
                                                                     }
                                                                     §§goto(addr017f);
                                                                  }
                                                               }
                                                               addr0287:
                                                               return;
                                                            }
                                                            §§goto(addr015f);
                                                         }
                                                         §§goto(addr0270);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr0144:
                                                      §§push(false);
                                                      if(!(_loc5_ && Boolean(this)))
                                                      {
                                                         §§goto(addr0153);
                                                      }
                                                   }
                                                   §§goto(addr0160);
                                                }
                                                §§goto(addr015b);
                                             }
                                             else
                                             {
                                                §§push(this.infoIcon);
                                                if(_loc6_)
                                                {
                                                   §§goto(addr0144);
                                                }
                                             }
                                             §§goto(addr015f);
                                          }
                                          §§goto(addr0187);
                                       }
                                    }
                                 }
                                 §§goto(addr0170);
                              }
                              §§goto(addr017f);
                           }
                           §§goto(addr00de);
                        }
                        else
                        {
                           this.costGroup.includeInLayout = true;
                           if(!(_loc5_ && Boolean(_loc3_)))
                           {
                              this.costGroup.visible = true;
                              if(!(_loc5_ && Boolean(param1)))
                              {
                                 §§goto(addr00b3);
                              }
                              §§goto(addr00c2);
                           }
                        }
                        §§goto(addr00ff);
                     }
                     §§goto(addr0187);
                  }
                  §§goto(addr0170);
               }
               §§goto(addr0259);
            }
            §§goto(addr00c2);
         }
         §§goto(addr006b);
      }
      
      public function set itemIndex(param1:int) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            if(this._itemIndex != param1)
            {
               if(_loc3_)
               {
                  this._itemIndex = param1;
                  if(!(_loc2_ && _loc2_))
                  {
                     invalidateProperties();
                  }
               }
            }
         }
      }
      
      public function get showPrice() : Boolean
      {
         return this._showPrice;
      }
      
      public function set showPrice(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            this._showPrice = param1;
            if(_loc3_ || Boolean(this))
            {
               addr003c:
               invalidateProperties();
            }
            return;
         }
         §§goto(addr003c);
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
         if(_loc3_)
         {
            this._showInfoIcon = param1;
            if(_loc3_)
            {
               addr0022:
               invalidateProperties();
            }
            return;
         }
         §§goto(addr0022);
      }
      
      public function get showStickyTape() : Boolean
      {
         return this._showStickyTape;
      }
      
      public function set showStickyTape(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._showStickyTape = param1;
         }
      }
      
      public function get showNewIcon() : Boolean
      {
         return this._showNewIcon;
      }
      
      public function set showNewIcon(param1:Boolean) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!(_loc4_ && _loc3_))
         {
            this._showNewIcon = param1;
            if(_loc3_ || _loc3_)
            {
               §§push(this.newIcon);
               if(_loc3_)
               {
                  if(§§pop())
                  {
                     if(_loc3_)
                     {
                        addr0063:
                        this.newIcon.visible = this.newIcon.includeInLayout = param1;
                        addr005f:
                     }
                  }
                  §§goto(addr0071);
               }
               §§goto(addr0063);
            }
            addr0071:
            return;
         }
         §§goto(addr005f);
      }
   }
}

