package net.bigpoint.cityrama.view.playfieldItemInventory.ui.components
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import net.bigpoint.cityrama.model.inventory.vo.PlayfieldItemInventoryListItemVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.DynamicImageButton;
   import net.bigpoint.cityrama.view.playfieldItemInventory.ui.events.PlayfieldItemInventoryEvent;
   import net.bigpoint.cityrama.view.playfieldItemInventory.ui.skins.PlayfieldItemInventoryFreeSlotSkin;
   import net.bigpoint.cityrama.view.playfieldItemInventory.ui.skins.PlayfieldItemInventoryLockedSlotSkin;
   import net.bigpoint.cityrama.view.playfieldItemInventory.ui.skins.PlayfieldItemInventoryOccupiedSlotSkin;
   import net.bigpoint.cityrama.view.playfieldItemInventory.ui.skins.PlayfieldItemInventoryPurchaseSlotSkin;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.HGroup;
   import spark.components.supportClasses.SkinnableComponent;
   
   public class PlayfieldItemInventorySlotComponent extends SkinnableComponent
   {
      
      public static const STATE_SLOT_OCCUPIED:String = "STATE_SLOT_OCCUPIED";
      
      public static const STATE_SLOT_PURCHASABLE:String = "STATE_SLOT_PURCHASABLE";
      
      public static const STATE_SLOT_FREE:String = "STATE_SLOT_FREE";
      
      public static const STATE_SLOT_LOCKED:String = "STATE_SLOT_LOCKED";
      
      public static const REMOVE_BTN_ID:String = "removeBtn";
      
      private static const MEASURED_WIDTH:uint = 82;
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!_loc1_)
      {
         STATE_SLOT_OCCUPIED = "STATE_SLOT_OCCUPIED";
         if(_loc2_)
         {
            STATE_SLOT_PURCHASABLE = "STATE_SLOT_PURCHASABLE";
            if(_loc2_ || PlayfieldItemInventorySlotComponent)
            {
               STATE_SLOT_FREE = "STATE_SLOT_FREE";
               if(!(_loc1_ && _loc1_))
               {
                  STATE_SLOT_LOCKED = "STATE_SLOT_LOCKED";
                  if(_loc2_)
                  {
                     addr0068:
                     REMOVE_BTN_ID = "removeBtn";
                     if(_loc2_)
                     {
                        MEASURED_WIDTH = 82;
                        if(!(_loc1_ && PlayfieldItemInventorySlotComponent))
                        {
                           _skinParts = {
                              "residentIcon":false,
                              "itemGfx":false,
                              "purchaseBtn":false,
                              "amountGroup":false,
                              "improvementGroup":false,
                              "departmentIcon":false,
                              "improvementSlot2":false,
                              "improvementSlot3":false,
                              "itemBackground":false,
                              "improvementSlot1":false,
                              "removeBtn":false,
                              "residentIconGroup":false
                           };
                           addr008b:
                        }
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr008b);
      }
      §§goto(addr0068);
      
      public var itemBackground:BriskImageDynaLib;
      
      public var itemGfx:BriskImageDynaLib;
      
      public var improvementGroup:HGroup;
      
      public var amountGroup:HGroup;
      
      public var improvementSlot1:BriskImageDynaLib;
      
      public var improvementSlot2:BriskImageDynaLib;
      
      public var improvementSlot3:BriskImageDynaLib;
      
      public var residentIcon:BriskImageDynaLib;
      
      public var residentIconGroup:HGroup;
      
      public var purchaseBtn:PurchaseSlotButton;
      
      public var removeBtn:DynamicImageButton;
      
      public var departmentIcon:BriskImageDynaLib;
      
      private var _data:PlayfieldItemInventoryListItemVo;
      
      private var _isDirty:Boolean;
      
      public function PlayfieldItemInventorySlotComponent()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            super();
         }
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            super.commitProperties();
            if(!_loc3_)
            {
               §§push(this._data);
               if(_loc2_ || _loc3_)
               {
                  §§push(§§pop());
                  if(_loc2_)
                  {
                     var _temp_2:* = §§pop();
                     §§push(_temp_2);
                     §§push(_temp_2);
                     if(_loc2_ || Boolean(this))
                     {
                        if(§§pop())
                        {
                           if(_loc2_ || _loc1_)
                           {
                              §§pop();
                              if(!(_loc3_ && _loc3_))
                              {
                                 §§push(this._isDirty);
                                 if(!(_loc3_ && Boolean(this)))
                                 {
                                    §§push(§§pop());
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       §§goto(addr0084);
                                    }
                                    §§goto(addr024f);
                                 }
                                 §§goto(addr0735);
                              }
                              §§goto(addr0238);
                           }
                           §§goto(addr03ac);
                        }
                        addr0084:
                        if(§§pop())
                        {
                           if(!(_loc3_ && _loc1_))
                           {
                              this._isDirty = false;
                              if(!(_loc3_ && _loc2_))
                              {
                                 this.alpha = 1;
                                 if(_loc2_ || _loc2_)
                                 {
                                    this.mouseChildren = false;
                                    if(!_loc3_)
                                    {
                                       §§push(this.purchaseBtn);
                                       if(!(_loc3_ && _loc1_))
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc2_ || _loc3_)
                                             {
                                                §§push(this.purchaseBtn);
                                                if(!(_loc3_ && _loc2_))
                                                {
                                                   addr00f7:
                                                   §§push(PurchaseSlotButton.PURCHASE_BTN_CLICKED);
                                                   if(_loc2_)
                                                   {
                                                      §§pop().removeEventListener(§§pop(),this.handlePurchaseSlot);
                                                      if(_loc2_)
                                                      {
                                                         §§push(this._data);
                                                         if(_loc2_ || _loc3_)
                                                         {
                                                            §§push(§§pop().slotPrice);
                                                            if(!(_loc3_ && _loc2_))
                                                            {
                                                               §§push(-1);
                                                               if(!_loc3_)
                                                               {
                                                                  if(§§pop() != §§pop())
                                                                  {
                                                                     if(!(_loc3_ && _loc2_))
                                                                     {
                                                                        this.mouseChildren = true;
                                                                        if(_loc2_)
                                                                        {
                                                                           §§push(this.purchaseBtn);
                                                                           if(!(_loc3_ && Boolean(this)))
                                                                           {
                                                                              addr0168:
                                                                              §§pop().addEventListener(PurchaseSlotButton.PURCHASE_BTN_CLICKED,this.handlePurchaseSlot);
                                                                              if(!_loc3_)
                                                                              {
                                                                                 §§push(this.purchaseBtn);
                                                                                 if(!(_loc3_ && _loc1_))
                                                                                 {
                                                                                    addr0185:
                                                                                    §§push(this._data);
                                                                                    if(_loc2_)
                                                                                    {
                                                                                       §§push(§§pop().disabledAlpha);
                                                                                       if(!(_loc3_ && _loc3_))
                                                                                       {
                                                                                          §§push(§§pop() == 1);
                                                                                          if(!(_loc3_ && _loc3_))
                                                                                          {
                                                                                             §§pop().enabled = §§pop();
                                                                                             if(!(_loc3_ && _loc2_))
                                                                                             {
                                                                                                §§push(this.purchaseBtn);
                                                                                                if(_loc2_)
                                                                                                {
                                                                                                   §§push(this._data);
                                                                                                   if(!_loc3_)
                                                                                                   {
                                                                                                      addr01d0:
                                                                                                      §§push(§§pop().slotPrice);
                                                                                                      if(_loc2_)
                                                                                                      {
                                                                                                         §§push(§§pop() > this._data.currentRCStock);
                                                                                                         if(!_loc3_)
                                                                                                         {
                                                                                                            addr01e5:
                                                                                                            var _temp_22:* = §§pop();
                                                                                                            §§push(_temp_22);
                                                                                                            if(_temp_22)
                                                                                                            {
                                                                                                               if(_loc2_ || _loc1_)
                                                                                                               {
                                                                                                                  §§pop();
                                                                                                                  if(!_loc3_)
                                                                                                                  {
                                                                                                                     addr0205:
                                                                                                                     §§pop().showPlus = Boolean(this.purchaseBtn.enabled);
                                                                                                                     addr01fd:
                                                                                                                     if(!(_loc3_ && _loc3_))
                                                                                                                     {
                                                                                                                        addr0220:
                                                                                                                        this.purchaseBtn.price = this._data.slotPrice;
                                                                                                                        addr0219:
                                                                                                                        addr021d:
                                                                                                                        if(!_loc3_)
                                                                                                                        {
                                                                                                                           this.alpha = this._data.disabledAlpha;
                                                                                                                           if(_loc2_)
                                                                                                                           {
                                                                                                                              addr0238:
                                                                                                                              §§push(this.removeBtn);
                                                                                                                              if(!_loc3_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop());
                                                                                                                                 if(_loc2_ || _loc2_)
                                                                                                                                 {
                                                                                                                                    addr024f:
                                                                                                                                    var _temp_26:* = §§pop();
                                                                                                                                    §§push(_temp_26);
                                                                                                                                    §§push(_temp_26);
                                                                                                                                    if(!_loc3_)
                                                                                                                                    {
                                                                                                                                       if(§§pop())
                                                                                                                                       {
                                                                                                                                          if(_loc2_ || _loc3_)
                                                                                                                                          {
                                                                                                                                             §§pop();
                                                                                                                                             if(_loc2_)
                                                                                                                                             {
                                                                                                                                                §§push(this._data);
                                                                                                                                                if(_loc2_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop().item);
                                                                                                                                                   if(_loc2_ || _loc3_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop());
                                                                                                                                                      if(!_loc3_)
                                                                                                                                                      {
                                                                                                                                                         addr028b:
                                                                                                                                                         if(§§pop())
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc3_ && _loc1_))
                                                                                                                                                            {
                                                                                                                                                               addr029c:
                                                                                                                                                               this.mouseChildren = true;
                                                                                                                                                               if(!_loc3_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(this.removeBtn);
                                                                                                                                                                  if(!(_loc3_ && _loc1_))
                                                                                                                                                                  {
                                                                                                                                                                     addr02b7:
                                                                                                                                                                     §§pop().removeEventListener(MouseEvent.CLICK,this.handleRemoveInventoryItem);
                                                                                                                                                                     if(!_loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        addr02c9:
                                                                                                                                                                        §§push(this.removeBtn);
                                                                                                                                                                        if(!_loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           §§pop().addEventListener(MouseEvent.CLICK,this.handleRemoveInventoryItem);
                                                                                                                                                                           if(!(_loc3_ && _loc3_))
                                                                                                                                                                           {
                                                                                                                                                                              addr02f0:
                                                                                                                                                                              this.removeBtn.toolTip = LocaUtils.getString("rcl.guiinfolayer.inventory","rcl.guiinfolayer.inventory.text.remove");
                                                                                                                                                                              addr02ec:
                                                                                                                                                                              if(_loc2_ || _loc1_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr030b:
                                                                                                                                                                                 §§push(this.itemBackground);
                                                                                                                                                                                 if(_loc2_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop());
                                                                                                                                                                                    if(_loc2_)
                                                                                                                                                                                    {
                                                                                                                                                                                       var _temp_33:* = §§pop();
                                                                                                                                                                                       §§push(_temp_33);
                                                                                                                                                                                       §§push(_temp_33);
                                                                                                                                                                                       if(_loc2_ || Boolean(this))
                                                                                                                                                                                       {
                                                                                                                                                                                          if(§§pop())
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!_loc3_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§pop();
                                                                                                                                                                                                if(_loc2_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(this._data);
                                                                                                                                                                                                   if(_loc2_ || Boolean(this))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop().item);
                                                                                                                                                                                                      if(_loc2_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop());
                                                                                                                                                                                                         if(_loc2_ || _loc3_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr035e:
                                                                                                                                                                                                            if(§§pop())
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc2_ || Boolean(this))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr0373:
                                                                                                                                                                                                                  this.itemBackground.briskDynaVo = this._data.item.bgGfxVo;
                                                                                                                                                                                                                  addr036f:
                                                                                                                                                                                                                  if(!_loc3_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr0386:
                                                                                                                                                                                                                     §§push(this.itemGfx);
                                                                                                                                                                                                                     if(_loc2_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop());
                                                                                                                                                                                                                        if(_loc2_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           var _temp_38:* = §§pop();
                                                                                                                                                                                                                           §§push(_temp_38);
                                                                                                                                                                                                                           §§push(_temp_38);
                                                                                                                                                                                                                           if(_loc2_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr039b:
                                                                                                                                                                                                                              if(§§pop())
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc2_ || _loc1_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr03ac:
                                                                                                                                                                                                                                    §§pop();
                                                                                                                                                                                                                                    if(!(_loc3_ && _loc2_))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr03ba:
                                                                                                                                                                                                                                       §§push(this._data);
                                                                                                                                                                                                                                       if(!(_loc3_ && _loc1_))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(§§pop().item);
                                                                                                                                                                                                                                          if(_loc2_ || _loc2_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(§§pop());
                                                                                                                                                                                                                                             if(_loc2_ || _loc2_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr03e9:
                                                                                                                                                                                                                                                if(§§pop())
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc2_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      this.itemGfx.briskDynaVo = this._data.item.playfieldItemGfxVo;
                                                                                                                                                                                                                                                      addr03f6:
                                                                                                                                                                                                                                                      addr03f2:
                                                                                                                                                                                                                                                      if(_loc2_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr0413:
                                                                                                                                                                                                                                                         §§push(Boolean(this.improvementGroup));
                                                                                                                                                                                                                                                         if(_loc2_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            var _temp_44:* = §§pop();
                                                                                                                                                                                                                                                            §§push(_temp_44);
                                                                                                                                                                                                                                                            §§push(_temp_44);
                                                                                                                                                                                                                                                            if(_loc2_ || _loc2_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(§§pop())
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(_loc2_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr0434:
                                                                                                                                                                                                                                                                     §§pop();
                                                                                                                                                                                                                                                                     if(_loc2_ || _loc1_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(this._data);
                                                                                                                                                                                                                                                                        if(!_loc3_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(§§pop().item);
                                                                                                                                                                                                                                                                           if(_loc2_ || Boolean(this))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(§§pop());
                                                                                                                                                                                                                                                                              if(_loc2_ || _loc3_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr0469:
                                                                                                                                                                                                                                                                                 if(§§pop())
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(!(_loc3_ && _loc1_))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr047a:
                                                                                                                                                                                                                                                                                       this.improvementGroup.visible = this._data.item.improvementGfx != null;
                                                                                                                                                                                                                                                                                       if(!_loc3_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr0492:
                                                                                                                                                                                                                                                                                          §§push(this._data);
                                                                                                                                                                                                                                                                                          if(!_loc3_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(§§pop().item);
                                                                                                                                                                                                                                                                                             if(!_loc3_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(§§pop().improvementGfx)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(_loc2_ || _loc3_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      addr04b7:
                                                                                                                                                                                                                                                                                                      §§push(this.improvementSlot1);
                                                                                                                                                                                                                                                                                                      if(_loc2_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(§§pop());
                                                                                                                                                                                                                                                                                                         if(_loc2_ || _loc2_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            addr04ce:
                                                                                                                                                                                                                                                                                                            var _temp_52:* = §§pop();
                                                                                                                                                                                                                                                                                                            §§push(_temp_52);
                                                                                                                                                                                                                                                                                                            §§push(_temp_52);
                                                                                                                                                                                                                                                                                                            if(_loc2_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(§§pop())
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(!(_loc3_ && _loc2_))
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§pop();
                                                                                                                                                                                                                                                                                                                     if(!_loc3_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        addr04eb:
                                                                                                                                                                                                                                                                                                                        §§push(this.improvementSlot2);
                                                                                                                                                                                                                                                                                                                        if(_loc2_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§push(§§pop());
                                                                                                                                                                                                                                                                                                                           if(!_loc3_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              addr04fa:
                                                                                                                                                                                                                                                                                                                              var _temp_54:* = §§pop();
                                                                                                                                                                                                                                                                                                                              §§push(_temp_54);
                                                                                                                                                                                                                                                                                                                              §§push(_temp_54);
                                                                                                                                                                                                                                                                                                                              if(!(_loc3_ && _loc2_))
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 addr0508:
                                                                                                                                                                                                                                                                                                                                 if(§§pop())
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    if(!_loc3_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       addr0511:
                                                                                                                                                                                                                                                                                                                                       §§pop();
                                                                                                                                                                                                                                                                                                                                       if(!_loc3_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          addr0517:
                                                                                                                                                                                                                                                                                                                                          §§push(this.improvementSlot3);
                                                                                                                                                                                                                                                                                                                                          if(_loc2_ || _loc1_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§push(§§pop());
                                                                                                                                                                                                                                                                                                                                             if(_loc2_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                addr0536:
                                                                                                                                                                                                                                                                                                                                                if(§§pop())
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   if(!_loc3_)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      addr0543:
                                                                                                                                                                                                                                                                                                                                                      this.improvementSlot1.briskDynaVo = this._data.item.improvementGfx[0];
                                                                                                                                                                                                                                                                                                                                                      if(!_loc3_)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         addr055f:
                                                                                                                                                                                                                                                                                                                                                         this.improvementSlot2.briskDynaVo = this._data.item.improvementGfx[1];
                                                                                                                                                                                                                                                                                                                                                         addr055b:
                                                                                                                                                                                                                                                                                                                                                         if(_loc2_)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            addr057b:
                                                                                                                                                                                                                                                                                                                                                            this.improvementSlot3.briskDynaVo = this._data.item.improvementGfx[2];
                                                                                                                                                                                                                                                                                                                                                            if(!_loc3_)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               addr0593:
                                                                                                                                                                                                                                                                                                                                                               §§push(Boolean(this.amountGroup));
                                                                                                                                                                                                                                                                                                                                                               if(!(_loc3_ && _loc1_))
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  addr05a5:
                                                                                                                                                                                                                                                                                                                                                                  var _temp_59:* = §§pop();
                                                                                                                                                                                                                                                                                                                                                                  §§push(_temp_59);
                                                                                                                                                                                                                                                                                                                                                                  §§push(_temp_59);
                                                                                                                                                                                                                                                                                                                                                                  if(!_loc3_)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        if(_loc2_)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           addr05b4:
                                                                                                                                                                                                                                                                                                                                                                           §§pop();
                                                                                                                                                                                                                                                                                                                                                                           if(_loc2_ || _loc1_)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              addr05c2:
                                                                                                                                                                                                                                                                                                                                                                              §§push(Boolean(this.improvementGroup));
                                                                                                                                                                                                                                                                                                                                                                              if(_loc2_)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 addr05cc:
                                                                                                                                                                                                                                                                                                                                                                                 var _temp_61:* = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                 §§push(_temp_61);
                                                                                                                                                                                                                                                                                                                                                                                 §§push(_temp_61);
                                                                                                                                                                                                                                                                                                                                                                                 if(_loc2_)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    addr05d2:
                                                                                                                                                                                                                                                                                                                                                                                    if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       if(!_loc3_)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          §§pop();
                                                                                                                                                                                                                                                                                                                                                                                          if(_loc2_)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             addr05e1:
                                                                                                                                                                                                                                                                                                                                                                                             §§push(this._data);
                                                                                                                                                                                                                                                                                                                                                                                             if(!_loc3_)
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                §§push(§§pop().item);
                                                                                                                                                                                                                                                                                                                                                                                                if(_loc2_)
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   §§push(§§pop());
                                                                                                                                                                                                                                                                                                                                                                                                   if(_loc2_ || Boolean(this))
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      addr0600:
                                                                                                                                                                                                                                                                                                                                                                                                      if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         if(!(_loc3_ && Boolean(this)))
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            addr0611:
                                                                                                                                                                                                                                                                                                                                                                                                            this.amountGroup.visible = !this.improvementGroup.visible;
                                                                                                                                                                                                                                                                                                                                                                                                            if(_loc2_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               addr062b:
                                                                                                                                                                                                                                                                                                                                                                                                               §§push(this.residentIcon);
                                                                                                                                                                                                                                                                                                                                                                                                               if(!(_loc3_ && _loc1_))
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  §§push(§§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                  if(_loc2_ || Boolean(this))
                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                     var _temp_67:* = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                     §§push(_temp_67);
                                                                                                                                                                                                                                                                                                                                                                                                                     §§push(_temp_67);
                                                                                                                                                                                                                                                                                                                                                                                                                     if(!_loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        addr0651:
                                                                                                                                                                                                                                                                                                                                                                                                                        if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                           if(_loc2_)
                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                              addr065a:
                                                                                                                                                                                                                                                                                                                                                                                                                              §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                              if(!_loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                 addr0660:
                                                                                                                                                                                                                                                                                                                                                                                                                                 §§push(this.residentIconGroup);
                                                                                                                                                                                                                                                                                                                                                                                                                                 if(_loc2_)
                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                    addr066b:
                                                                                                                                                                                                                                                                                                                                                                                                                                    var _temp_68:* = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                    §§push(_temp_68);
                                                                                                                                                                                                                                                                                                                                                                                                                                    §§push(_temp_68);
                                                                                                                                                                                                                                                                                                                                                                                                                                    if(!(_loc3_ && Boolean(this)))
                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                       if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                          if(!(_loc3_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                             addr068a:
                                                                                                                                                                                                                                                                                                                                                                                                                                             §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                             if(!_loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                                                                §§push(this._data);
                                                                                                                                                                                                                                                                                                                                                                                                                                                if(_loc2_ || _loc1_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                   addr06a1:
                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§push(§§pop().item);
                                                                                                                                                                                                                                                                                                                                                                                                                                                   if(!_loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§push(§§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                      if(_loc2_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                                                                         addr06af:
                                                                                                                                                                                                                                                                                                                                                                                                                                                         if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                                                                            if(!(_loc3_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                                                                               addr06c0:
                                                                                                                                                                                                                                                                                                                                                                                                                                                               var _temp_74:* = this.residentIconGroup;
                                                                                                                                                                                                                                                                                                                                                                                                                                                               var _loc1_:*;
                                                                                                                                                                                                                                                                                                                                                                                                                                                               this.residentIconGroup.includeInLayout = _loc1_ = this._data.item.residentGfx != null;
                                                                                                                                                                                                                                                                                                                                                                                                                                                               _temp_74.visible = _loc1_;
                                                                                                                                                                                                                                                                                                                                                                                                                                                               if(!_loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  addr06e3:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  §§push(this._data);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  if(_loc2_ || _loc1_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     addr06f4:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     §§push(§§pop().item);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     if(!(_loc3_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        addr0704:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        if(§§pop().residentGfx)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           if(!_loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              addr0714:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              this.residentIcon.briskDynaVo = this._data.item.residentGfx;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              addr0710:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              if(!_loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 addr0726:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 §§push(this.departmentIcon);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 if(_loc2_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    §§push(§§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    if(_loc2_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       addr0735:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       var _temp_77:* = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       §§push(_temp_77);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       §§push(_temp_77);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       if(!(_loc3_ && Boolean(this)))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          addr0743:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             if(!_loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                addr074c:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                if(!_loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   addr0752:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§push(this._data);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   if(!(_loc3_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      addr0763:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§push(§§pop().item);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      if(!_loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         addr076b:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         §§push(§§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         if(_loc2_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            addr0771:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               if(_loc2_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  addr077a:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  §§push(this.departmentIcon);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  if(_loc2_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     addr078b:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     §§push(this.departmentIcon);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     §§push(this._data.item.departmentGfx == null);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     if(_loc2_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        §§push(!§§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     §§pop().visible = §§pop().includeInLayout = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     if(_loc2_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        addr07b7:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        §§push(this._data);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        if(_loc2_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           addr07c3:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           addr07c0:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           if(§§pop().item.departmentGfx)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              if(!_loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr07d3);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr081e);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr07e5);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr07ee);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr0831);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  addr07d3:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  this.departmentIcon.briskDynaVo = this._data.item.departmentGfx;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  if(_loc2_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     addr07e5:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     §§push(this._data);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     if(!_loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        addr07ee:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        §§push(§§pop().slotState == STATE_SLOT_FREE);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        if(_loc2_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           addr07fa:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           var _temp_83:* = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           addr07fb:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           §§push(_temp_83);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           if(_temp_83)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              if(!(_loc3_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 addr0818:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 if(!_loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr0828);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr0831);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           addr0828:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr0822);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr0818);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     addr0822:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     addr081e:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     addr0827:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     addr0825:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     if(this._data.disabledAlpha < 1)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        if(_loc2_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           addr0831:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           this.alpha = this._data.disabledAlpha;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr083c);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr0831);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr07e5);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr0818);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr07c3);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr0822);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr07e5);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr0818);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr0771);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr07fb);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr0771);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr078b);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr0831);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr0726);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr076b);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr07c0);
                                                                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr081e);
                                                                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr0710);
                                                                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr0726);
                                                                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr07fa);
                                                                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr07c3);
                                                                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr07ee);
                                                                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr06e3);
                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr06af);
                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr0743);
                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr074c);
                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr0752);
                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr066b);
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr07fb);
                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr068a);
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr0714);
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr07e5);
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr0752);
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr062b);
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr068a);
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr076b);
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr06a1);
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr0660);
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr0735);
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr0600);
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr07fb);
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr0600);
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr07e5);
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr065a);
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr05cc);
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr05d2);
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               §§goto(addr0600);
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr062b);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr05c2);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr062b);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr06e3);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr0593);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr06af);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr057b);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§goto(addr05c2);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr0828);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr0536);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr0743);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr0735);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr055f);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr081e);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr0536);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr04fa);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr0508);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr0828);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr0543);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr06e3);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr0593);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr0704);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr07c0);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr055b);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr062b);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr0593);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr0828);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr0704);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr07c0);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr0492);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr0828);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr0469);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr0508);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr0828);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr047a);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr081e);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr0413);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr0536);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr0704);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr0763);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr06c0);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr0434);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr03e9);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr0651);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr0735);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr03f6);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr04b7);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr05e1);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr0386);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr06af);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr0704);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr06f4);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr04eb);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr05a5);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr035e);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr0743);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr07fa);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr0373);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr05e1);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr0386);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr02f0);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr0492);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr02f0);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr062b);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr03ba);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr030b);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr05a5);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr0704);
                                                                                                                                                }
                                                                                                                                                §§goto(addr0763);
                                                                                                                                             }
                                                                                                                                             §§goto(addr0492);
                                                                                                                                          }
                                                                                                                                          §§goto(addr0511);
                                                                                                                                       }
                                                                                                                                       §§goto(addr028b);
                                                                                                                                    }
                                                                                                                                    §§goto(addr0743);
                                                                                                                                 }
                                                                                                                                 §§goto(addr05b4);
                                                                                                                              }
                                                                                                                              §§goto(addr02b7);
                                                                                                                           }
                                                                                                                           §§goto(addr083c);
                                                                                                                        }
                                                                                                                        §§goto(addr07b7);
                                                                                                                     }
                                                                                                                     §§goto(addr029c);
                                                                                                                  }
                                                                                                                  §§goto(addr0219);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr0205);
                                                                                                      }
                                                                                                      §§goto(addr0220);
                                                                                                   }
                                                                                                   §§goto(addr021d);
                                                                                                }
                                                                                                §§goto(addr01fd);
                                                                                             }
                                                                                             §§goto(addr0611);
                                                                                          }
                                                                                          §§goto(addr01e5);
                                                                                       }
                                                                                       §§goto(addr0220);
                                                                                    }
                                                                                    §§goto(addr01d0);
                                                                                 }
                                                                                 §§goto(addr01fd);
                                                                              }
                                                                              §§goto(addr02ec);
                                                                           }
                                                                           §§goto(addr0185);
                                                                        }
                                                                        §§goto(addr077a);
                                                                     }
                                                                     §§goto(addr03f2);
                                                                  }
                                                                  §§goto(addr0238);
                                                               }
                                                               §§goto(addr0827);
                                                            }
                                                            §§goto(addr0825);
                                                         }
                                                         §§goto(addr07c0);
                                                      }
                                                      §§goto(addr02c9);
                                                   }
                                                   §§goto(addr0168);
                                                }
                                                §§goto(addr0185);
                                             }
                                             §§goto(addr02c9);
                                          }
                                          §§goto(addr0238);
                                       }
                                       §§goto(addr00f7);
                                    }
                                    §§goto(addr081e);
                                 }
                                 §§goto(addr083c);
                              }
                              §§goto(addr0710);
                           }
                           §§goto(addr036f);
                        }
                        addr083c:
                        return;
                     }
                     §§goto(addr039b);
                  }
                  §§goto(addr04ce);
               }
               §§goto(addr06a1);
            }
            §§goto(addr036f);
         }
         §§goto(addr0517);
      }
      
      override public function setCurrentState(param1:String, param2:Boolean = true) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!_loc4_)
         {
            §§push(param1);
            if(!_loc4_)
            {
               §§push("over");
               if(_loc3_)
               {
                  §§push(§§pop() == §§pop());
                  if(!_loc4_)
                  {
                     var _temp_1:* = §§pop();
                     §§push(_temp_1);
                     §§push(_temp_1);
                     if(_loc3_ || Boolean(this))
                     {
                        if(!§§pop())
                        {
                           if(!_loc4_)
                           {
                              addr0045:
                              §§pop();
                              if(!_loc4_)
                              {
                                 §§push(param1);
                                 if(_loc3_)
                                 {
                                    §§push("selected");
                                    if(!_loc4_)
                                    {
                                       §§push(§§pop() == §§pop());
                                       if(_loc3_ || Boolean(this))
                                       {
                                          addr0069:
                                          var _temp_4:* = §§pop();
                                          §§push(_temp_4);
                                          §§push(_temp_4);
                                          if(!_loc4_)
                                          {
                                             addr0070:
                                             if(!§§pop())
                                             {
                                                if(_loc3_ || param2)
                                                {
                                                   addr008c:
                                                   §§pop();
                                                   if(_loc3_ || Boolean(param1))
                                                   {
                                                      §§push(param1);
                                                      if(!(_loc4_ && Boolean(this)))
                                                      {
                                                         addr00a9:
                                                         §§push("normal");
                                                         if(!_loc4_)
                                                         {
                                                            addr00b2:
                                                            §§push(§§pop() == §§pop());
                                                            if(_loc3_)
                                                            {
                                                               addr00b8:
                                                               var _temp_8:* = §§pop();
                                                               addr00b9:
                                                               §§push(_temp_8);
                                                               if(!_temp_8)
                                                               {
                                                                  if(!_loc4_)
                                                                  {
                                                                     addr00c3:
                                                                     §§pop();
                                                                     if(_loc3_ || param2)
                                                                     {
                                                                        §§goto(addr00e2);
                                                                     }
                                                                     §§goto(addr0108);
                                                                  }
                                                               }
                                                               addr00e2:
                                                               §§goto(addr00e1);
                                                            }
                                                            §§goto(addr00c3);
                                                         }
                                                         addr00e1:
                                                      }
                                                      §§goto(addr00d2);
                                                   }
                                                   §§goto(addr0108);
                                                }
                                             }
                                             §§goto(addr00b8);
                                          }
                                          §§goto(addr00b9);
                                       }
                                       §§goto(addr00c3);
                                    }
                                    §§goto(addr00b2);
                                 }
                                 §§goto(addr00a9);
                              }
                              §§goto(addr00f3);
                           }
                           §§goto(addr008c);
                        }
                        §§goto(addr0069);
                     }
                     §§goto(addr0070);
                  }
                  §§goto(addr0045);
               }
               §§goto(addr00e1);
            }
            addr00d2:
            if(param1 == "overSelected")
            {
               if(_loc3_ || _loc3_)
               {
                  addr00f3:
                  if(this.skin)
                  {
                     if(_loc3_ || param2)
                     {
                        addr0108:
                        this.skin.setCurrentState(param1);
                     }
                  }
                  §§goto(addr0111);
               }
               §§goto(addr0108);
            }
            addr0111:
            return;
         }
         §§goto(addr0108);
      }
      
      private function handleRemoveInventoryItem(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            param1.stopPropagation();
            if(_loc3_)
            {
               dispatchEvent(new PlayfieldItemInventoryEvent(PlayfieldItemInventoryEvent.DELETE_INVENTORY_ITEM,true,this._data));
            }
         }
      }
      
      private function handlePurchaseSlot(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            param1.stopPropagation();
            if(!_loc2_)
            {
               §§push(this.purchaseBtn);
               if(_loc3_ || _loc2_)
               {
                  if(§§pop())
                  {
                     if(!(_loc2_ && _loc3_))
                     {
                        addr0068:
                        this.purchaseBtn.removeEventListener(PurchaseSlotButton.PURCHASE_BTN_CLICKED,this.handlePurchaseSlot);
                        if(!(_loc2_ && Boolean(this)))
                        {
                           addr0082:
                           dispatchEvent(new PlayfieldItemInventoryEvent(PlayfieldItemInventoryEvent.PURCHASE_INVENTORY_SLOT,true,this._data));
                        }
                        §§goto(addr0099);
                     }
                     §§goto(addr0082);
                  }
                  §§goto(addr0099);
               }
               §§goto(addr0068);
            }
         }
         addr0099:
      }
      
      public function set data(param1:PlayfieldItemInventoryListItemVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            if(!RandomUtilities.isEqual(param1,this._data))
            {
               if(_loc2_ || _loc2_)
               {
                  this._data = param1;
                  if(_loc2_)
                  {
                     this._isDirty = true;
                     if(!_loc3_)
                     {
                        §§goto(addr006b);
                     }
                     §§goto(addr0076);
                  }
                  addr006b:
                  this.determineSkin();
                  if(!_loc3_)
                  {
                     addr0076:
                     invalidateProperties();
                  }
                  §§goto(addr007b);
               }
            }
            addr007b:
            return;
         }
         §§goto(addr0076);
      }
      
      private function determineSkin() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:* = this._data.slotState;
         if(!_loc2_)
         {
            §§push(STATE_SLOT_FREE);
            if(!(_loc2_ && _loc3_))
            {
               §§push(_loc1_);
               if(!(_loc2_ && _loc2_))
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc3_ || _loc2_)
                     {
                        addr00df:
                        §§push(0);
                        if(_loc2_ && Boolean(_loc1_))
                        {
                        }
                     }
                     else
                     {
                        addr0156:
                        §§push(2);
                        if(_loc2_)
                        {
                        }
                     }
                  }
                  else
                  {
                     §§push(STATE_SLOT_OCCUPIED);
                     if(!(_loc2_ && _loc2_))
                     {
                        §§push(_loc1_);
                        if(_loc3_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!_loc2_)
                              {
                                 §§push(1);
                                 if(_loc3_ || _loc3_)
                                 {
                                 }
                              }
                              else
                              {
                                 §§goto(addr0156);
                              }
                           }
                           else
                           {
                              §§push(STATE_SLOT_PURCHASABLE);
                              if(!(_loc2_ && _loc2_))
                              {
                                 addr0134:
                                 §§push(_loc1_);
                                 if(!_loc2_)
                                 {
                                    addr013a:
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc3_ || _loc3_)
                                       {
                                          §§goto(addr0156);
                                       }
                                       else
                                       {
                                          addr0169:
                                          §§push(3);
                                          if(_loc3_)
                                          {
                                          }
                                       }
                                       §§goto(addr0180);
                                    }
                                    else
                                    {
                                       §§goto(addr0165);
                                    }
                                 }
                                 addr0165:
                                 §§goto(addr0164);
                              }
                              addr0164:
                              if(STATE_SLOT_LOCKED === _loc1_)
                              {
                                 §§goto(addr0169);
                              }
                              else
                              {
                                 §§push(4);
                              }
                              §§goto(addr0180);
                           }
                           §§goto(addr0180);
                        }
                        §§goto(addr013a);
                     }
                     §§goto(addr0164);
                  }
                  addr0180:
                  switch(§§pop())
                  {
                     case 0:
                        setStyle("skinClass",PlayfieldItemInventoryFreeSlotSkin);
                        if(_loc2_ && _loc3_)
                        {
                        }
                        break;
                     case 1:
                        setStyle("skinClass",PlayfieldItemInventoryOccupiedSlotSkin);
                        if(_loc2_)
                        {
                        }
                        break;
                     case 2:
                        setStyle("skinClass",PlayfieldItemInventoryPurchaseSlotSkin);
                        if(_loc2_)
                        {
                        }
                        break;
                     case 3:
                        setStyle("skinClass",PlayfieldItemInventoryLockedSlotSkin);
                        if(_loc2_)
                        {
                        }
                        break;
                     default:
                        setStyle("skinClass",PlayfieldItemInventoryFreeSlotSkin);
                        if(_loc3_ || Boolean(this))
                        {
                        }
                  }
                  return;
               }
               §§goto(addr0165);
            }
            §§goto(addr0134);
         }
         §§goto(addr00df);
      }
      
      public function get data() : PlayfieldItemInventoryListItemVo
      {
         return this._data;
      }
      
      override public function get measuredWidth() : Number
      {
         return MEASURED_WIDTH;
      }
   }
}

