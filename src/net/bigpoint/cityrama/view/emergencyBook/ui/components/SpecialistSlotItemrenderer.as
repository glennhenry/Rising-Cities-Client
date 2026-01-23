package net.bigpoint.cityrama.view.emergencyBook.ui.components
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import mx.binding.BindingManager;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.resources.ResourceManager;
   import net.bigpoint.cityrama.model.emergencyLayer.vo.ProfessionalSlotVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.DynamicImageButton;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.common.components.StickyNoteComponent;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.VGroup;
   import spark.components.supportClasses.ItemRenderer;
   
   public class SpecialistSlotItemrenderer extends ItemRenderer
   {
      
      public static const SPECIALIST_SLOT_CLICKED:String = "SPECIALIST_SLOT_CLICKED";
      
      public static const SPECIALIST_REMOVE_CLICKED:String = "SPECIALIST_REMOVE_CLICKED";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!_loc2_)
      {
         SPECIALIST_SLOT_CLICKED = "SPECIALIST_SLOT_CLICKED";
         if(_loc1_ || _loc2_)
         {
            SPECIALIST_REMOVE_CLICKED = "SPECIALIST_REMOVE_CLICKED";
         }
      }
      
      private var _1474880769assignButton:MultistateButton;
      
      private var _1060367224badgeImage:BriskImageDynaLib;
      
      private var _1420004117emptySlot:Group;
      
      private var _76117376filledSlot:Group;
      
      private var _1844466615nameDisplay:LocaLabel;
      
      private var _1034926718profImage:BriskImageDynaLib;
      
      private var _1339123498removeButton:DynamicImageButton;
      
      private var _1042337429requiredLabel:LocaLabel;
      
      private var _339532710serviceImage:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:ProfessionalSlotVo;
      
      private var _dataIsDirty:Boolean = false;
      
      public function SpecialistSlotItemrenderer()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            super();
            if(!_loc2_)
            {
               mx_internal::_document = this;
               if(!(_loc2_ && Boolean(this)))
               {
                  this.autoDrawBackground = false;
                  if(_loc1_)
                  {
                     this.width = 137;
                     if(!(_loc2_ && _loc2_))
                     {
                        §§goto(addr0066);
                     }
                     §§goto(addr0070);
                  }
                  addr0066:
                  this.percentHeight = 100;
                  if(_loc1_)
                  {
                     addr0070:
                     this.mxmlContent = [this._SpecialistSlotItemrenderer_Group1_i(),this._SpecialistSlotItemrenderer_Group3_i()];
                     if(!(_loc2_ && _loc1_))
                     {
                        §§goto(addr0098);
                     }
                     §§goto(addr00b1);
                  }
                  §§goto(addr0098);
               }
            }
         }
         addr0098:
         this.addEventListener("click",this.___SpecialistSlotItemrenderer_ItemRenderer1_click);
         if(!(_loc2_ && _loc1_))
         {
            addr00b1:
            this.addEventListener("creationComplete",this.___SpecialistSlotItemrenderer_ItemRenderer1_creationComplete);
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            super.moduleFactory = param1;
            if(!(_loc3_ && _loc2_))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc2_ || _loc2_)
                  {
                     §§goto(addr0049);
                  }
               }
               else
               {
                  this.__moduleFactoryInitialized = true;
               }
               return;
            }
         }
         addr0049:
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super.initialize();
         }
      }
      
      private function handleClick(param1:Event = null) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            §§push(this._data);
            if(!_loc2_)
            {
               §§push(!§§pop());
               if(!(_loc2_ && Boolean(param1)))
               {
                  var _temp_3:* = §§pop();
                  §§push(_temp_3);
                  if(!_temp_3)
                  {
                     if(!(_loc2_ && _loc3_))
                     {
                        §§goto(addr004c);
                     }
                     §§goto(addr0073);
                  }
                  §§goto(addr0074);
               }
               addr004c:
               §§pop();
               if(_loc3_)
               {
                  addr0074:
                  addr0063:
                  addr0052:
                  §§push(this._data.empty);
                  if(_loc3_ || Boolean(this))
                  {
                     addr0073:
                     §§push(§§pop());
                  }
                  if(§§pop())
                  {
                     if(_loc3_ || _loc3_)
                     {
                        dispatchEvent(new Event(SPECIALIST_SLOT_CLICKED,true));
                     }
                  }
               }
               return;
            }
            §§goto(addr0063);
         }
         §§goto(addr0052);
      }
      
      override public function set data(param1:Object) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            super.data = param1;
            if(_loc3_)
            {
               if(!RandomUtilities.isEqual(param1,this._data))
               {
                  if(_loc3_ || _loc3_)
                  {
                     this._data = param1 as ProfessionalSlotVo;
                     if(!_loc2_)
                     {
                        addr0062:
                        this._dataIsDirty = true;
                        if(!(_loc2_ && _loc2_))
                        {
                           addr0074:
                           invalidateProperties();
                        }
                        §§goto(addr0079);
                     }
                     §§goto(addr0074);
                  }
               }
            }
            addr0079:
            return;
         }
         §§goto(addr0062);
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc1_:* = null;
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         if(_loc8_ || Boolean(_loc3_))
         {
            super.commitProperties();
            if(!(_loc9_ && Boolean(this)))
            {
               §§push(this._dataIsDirty);
               if(!_loc9_)
               {
                  if(§§pop())
                  {
                     if(!(_loc9_ && Boolean(this)))
                     {
                        this._dataIsDirty = false;
                        if(!_loc9_)
                        {
                           this.emptySlot.visible = this.emptySlot.includeInLayout = this._data.empty;
                           if(!(_loc9_ && Boolean(_loc3_)))
                           {
                              addr009a:
                              this.filledSlot.visible = this.filledSlot.includeInLayout = !this._data.empty;
                              if(_loc8_)
                              {
                                 §§push(this._data);
                                 if(_loc8_)
                                 {
                                    addr00c8:
                                    if(§§pop().empty)
                                    {
                                       if(_loc8_ || Boolean(_loc1_))
                                       {
                                          this.serviceImage.dynaBmpSourceName = this._data.reqSpecialisationGfxId.toString();
                                          if(_loc8_ || Boolean(_loc2_))
                                          {
                                             addr00f9:
                                             §§push(ResourceManager.getInstance());
                                             if(_loc8_)
                                             {
                                                §§push("rcl.emergencybook.layer");
                                                if(_loc8_ || Boolean(_loc2_))
                                                {
                                                   §§push("");
                                                   if(_loc8_ || Boolean(_loc3_))
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      if(_loc8_)
                                                      {
                                                         §§push("rcl.emergencybook.layer.requiredGrade");
                                                         if(_loc8_)
                                                         {
                                                            §§push("");
                                                            if(!_loc9_)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               if(!_loc9_)
                                                               {
                                                                  §§push(§§pop().getString(§§pop(),§§pop()));
                                                                  if(_loc8_)
                                                                  {
                                                                     §§push(§§pop());
                                                                     if(!(_loc9_ && Boolean(this)))
                                                                     {
                                                                        _loc1_ = §§pop();
                                                                        if(!_loc9_)
                                                                        {
                                                                           §§push(ResourceManager.getInstance());
                                                                           if(!(_loc9_ && Boolean(_loc3_)))
                                                                           {
                                                                              §§push("rcl.professions");
                                                                              if(!_loc9_)
                                                                              {
                                                                                 §§push("");
                                                                                 if(_loc8_ || Boolean(_loc1_))
                                                                                 {
                                                                                    addr0193:
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(_loc8_ || Boolean(_loc2_))
                                                                                    {
                                                                                       §§push("rcl.professions.");
                                                                                       if(_loc8_ || Boolean(_loc3_))
                                                                                       {
                                                                                          §§push(this._data);
                                                                                          if(_loc8_ || Boolean(_loc3_))
                                                                                          {
                                                                                             §§push(§§pop().reqSpecialisationLocaId);
                                                                                             if(_loc8_)
                                                                                             {
                                                                                                §§push(§§pop() + §§pop().toString());
                                                                                                if(_loc8_)
                                                                                                {
                                                                                                   §§push(§§pop().getString(§§pop(),§§pop()));
                                                                                                   if(!(_loc9_ && Boolean(_loc3_)))
                                                                                                   {
                                                                                                      §§push(§§pop());
                                                                                                      if(_loc8_)
                                                                                                      {
                                                                                                         _loc2_ = §§pop();
                                                                                                         if(_loc8_ || Boolean(_loc1_))
                                                                                                         {
                                                                                                            §§push(_loc1_);
                                                                                                            if(_loc8_ || Boolean(_loc2_))
                                                                                                            {
                                                                                                               addr0210:
                                                                                                               §§push("{0}");
                                                                                                               if(!(_loc9_ && Boolean(_loc3_)))
                                                                                                               {
                                                                                                                  §§push(_loc2_);
                                                                                                                  if(_loc8_)
                                                                                                                  {
                                                                                                                     §§push(§§pop().replace(§§pop(),§§pop()));
                                                                                                                     if(!(_loc9_ && Boolean(this)))
                                                                                                                     {
                                                                                                                        addr023b:
                                                                                                                        _loc1_ = §§pop();
                                                                                                                        if(_loc8_ || Boolean(_loc1_))
                                                                                                                        {
                                                                                                                           addr024a:
                                                                                                                           §§push(_loc1_);
                                                                                                                           if(!(_loc9_ && Boolean(_loc3_)))
                                                                                                                           {
                                                                                                                              §§push("{1}");
                                                                                                                              if(_loc8_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop().replace(§§pop(),this._data.reqSecurityGrade.toString()));
                                                                                                                                 if(_loc8_)
                                                                                                                                 {
                                                                                                                                    addr0279:
                                                                                                                                    _loc1_ = §§pop();
                                                                                                                                    if(_loc8_)
                                                                                                                                    {
                                                                                                                                       this.requiredLabel.text = _loc1_;
                                                                                                                                       if(_loc8_)
                                                                                                                                       {
                                                                                                                                          addr028d:
                                                                                                                                          §§push(ResourceManager.getInstance());
                                                                                                                                          if(_loc8_)
                                                                                                                                          {
                                                                                                                                             §§push("rcl.tooltips.emergencyLayer");
                                                                                                                                             if(!_loc9_)
                                                                                                                                             {
                                                                                                                                                §§push("");
                                                                                                                                                if(!_loc9_)
                                                                                                                                                {
                                                                                                                                                   addr02aa:
                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                   if(_loc8_)
                                                                                                                                                   {
                                                                                                                                                      §§push("rcl.tooltips.emergencyLayer.clickToAssign");
                                                                                                                                                      if(_loc8_ || Boolean(_loc2_))
                                                                                                                                                      {
                                                                                                                                                         §§push("");
                                                                                                                                                         if(!_loc9_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                            if(_loc8_)
                                                                                                                                                            {
                                                                                                                                                               addr02d2:
                                                                                                                                                               §§push(§§pop().getString(§§pop(),§§pop()));
                                                                                                                                                               if(!(_loc9_ && Boolean(_loc2_)))
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop());
                                                                                                                                                                  if(_loc8_)
                                                                                                                                                                  {
                                                                                                                                                                     _loc3_ = §§pop();
                                                                                                                                                                     if(!_loc9_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc3_);
                                                                                                                                                                        if(_loc8_ || Boolean(_loc3_))
                                                                                                                                                                        {
                                                                                                                                                                           addr0301:
                                                                                                                                                                           §§push("{0}");
                                                                                                                                                                           if(_loc8_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc2_);
                                                                                                                                                                              if(!(_loc9_ && Boolean(_loc2_)))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop().replace(§§pop(),§§pop()));
                                                                                                                                                                                 if(!(_loc9_ && Boolean(_loc2_)))
                                                                                                                                                                                 {
                                                                                                                                                                                    addr032c:
                                                                                                                                                                                    _loc3_ = §§pop();
                                                                                                                                                                                    if(!(_loc9_ && Boolean(_loc2_)))
                                                                                                                                                                                    {
                                                                                                                                                                                       this.toolTip = _loc3_;
                                                                                                                                                                                       if(_loc9_ && Boolean(_loc1_))
                                                                                                                                                                                       {
                                                                                                                                                                                          addr04c3:
                                                                                                                                                                                          §§push(ResourceManager.getInstance());
                                                                                                                                                                                          if(!_loc9_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr04cf:
                                                                                                                                                                                             §§push("rcl.professions");
                                                                                                                                                                                             if(!(_loc9_ && Boolean(_loc2_)))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push("");
                                                                                                                                                                                                if(!_loc9_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                                                                   if(_loc8_ || Boolean(_loc3_))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr04f7:
                                                                                                                                                                                                      §§push("rcl.professions.");
                                                                                                                                                                                                      if(!_loc9_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(this._data);
                                                                                                                                                                                                         if(!(_loc9_ && Boolean(_loc1_)))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop().reqSpecialisationLocaId);
                                                                                                                                                                                                            if(!(_loc9_ && Boolean(_loc3_)))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr0523:
                                                                                                                                                                                                               §§push(§§pop() + §§pop().toString());
                                                                                                                                                                                                               if(!(_loc9_ && Boolean(this)))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop().getString(§§pop(),§§pop()));
                                                                                                                                                                                                                  if(!(_loc9_ && Boolean(this)))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr0548:
                                                                                                                                                                                                                     §§push(§§pop());
                                                                                                                                                                                                                     if(_loc8_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr054f:
                                                                                                                                                                                                                        _loc5_ = §§pop();
                                                                                                                                                                                                                        if(_loc8_ || Boolean(this))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr055f:
                                                                                                                                                                                                                           §§push(ResourceManager.getInstance());
                                                                                                                                                                                                                           if(_loc8_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push("rcl.professions");
                                                                                                                                                                                                                              if(_loc8_ || Boolean(_loc2_))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr057c:
                                                                                                                                                                                                                                 §§push("");
                                                                                                                                                                                                                                 if(_loc8_ || Boolean(_loc1_))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr058c:
                                                                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                    if(_loc8_ || Boolean(this))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr059b:
                                                                                                                                                                                                                                       §§push("rcl.professions.");
                                                                                                                                                                                                                                       if(!(_loc9_ && Boolean(_loc2_)))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr05ac:
                                                                                                                                                                                                                                          addr05b3:
                                                                                                                                                                                                                                          addr05b0:
                                                                                                                                                                                                                                          §§push(§§pop() + this._data.profSpecialisationLocaId.toString());
                                                                                                                                                                                                                                          if(_loc8_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr05be:
                                                                                                                                                                                                                                             §§push(§§pop().getString(§§pop(),§§pop()));
                                                                                                                                                                                                                                             if(_loc8_ || Boolean(_loc2_))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(§§pop());
                                                                                                                                                                                                                                                if(_loc8_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr05d7:
                                                                                                                                                                                                                                                   _loc6_ = §§pop();
                                                                                                                                                                                                                                                   if(_loc8_ || Boolean(_loc2_))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr05e7:
                                                                                                                                                                                                                                                      addr05eb:
                                                                                                                                                                                                                                                      §§push(this._data.reqSpecialisationLocaId);
                                                                                                                                                                                                                                                      if(_loc8_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr05f4:
                                                                                                                                                                                                                                                         if(§§pop() == this._data.profSpecialisationLocaId)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(!_loc9_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr0605:
                                                                                                                                                                                                                                                               §§push(ResourceManager.getInstance());
                                                                                                                                                                                                                                                               if(!_loc9_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr0611:
                                                                                                                                                                                                                                                                  §§push("rcl.tooltips.emergencyLayer");
                                                                                                                                                                                                                                                                  if(!_loc9_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr061a:
                                                                                                                                                                                                                                                                     §§push("");
                                                                                                                                                                                                                                                                     if(!_loc9_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                        if(!_loc9_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr0629:
                                                                                                                                                                                                                                                                           §§push("rcl.tooltips.emergencyLayer.optimalAssigned");
                                                                                                                                                                                                                                                                           if(_loc8_ || Boolean(_loc1_))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push("");
                                                                                                                                                                                                                                                                              if(!(_loc9_ && Boolean(_loc3_)))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr064b:
                                                                                                                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                 if(!_loc9_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr0652:
                                                                                                                                                                                                                                                                                    §§push(§§pop().getString(§§pop(),§§pop()));
                                                                                                                                                                                                                                                                                    if(!(_loc9_ && Boolean(_loc1_)))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(§§pop());
                                                                                                                                                                                                                                                                                       if(!_loc9_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr066b:
                                                                                                                                                                                                                                                                                          _loc3_ = §§pop();
                                                                                                                                                                                                                                                                                          if(_loc8_ || Boolean(this))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr06e3);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr06d4:
                                                                                                                                                                                                                                                                                          _loc3_ = §§pop();
                                                                                                                                                                                                                                                                                          if(!(_loc9_ && Boolean(_loc1_)))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             addr06e3:
                                                                                                                                                                                                                                                                                             §§push(_loc3_);
                                                                                                                                                                                                                                                                                             if(!(_loc9_ && Boolean(_loc1_)))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                addr06f2:
                                                                                                                                                                                                                                                                                                §§push("{0}");
                                                                                                                                                                                                                                                                                                if(_loc8_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   addr06fb:
                                                                                                                                                                                                                                                                                                   §§push(_loc5_);
                                                                                                                                                                                                                                                                                                   if(!_loc9_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      addr0703:
                                                                                                                                                                                                                                                                                                      §§push(§§pop().replace(§§pop(),§§pop()));
                                                                                                                                                                                                                                                                                                      if(_loc8_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§goto(addr070e);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr0731);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr0736);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr0734);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             addr070e:
                                                                                                                                                                                                                                                                                             _loc3_ = §§pop();
                                                                                                                                                                                                                                                                                             if(_loc8_ || Boolean(_loc2_))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                addr073b:
                                                                                                                                                                                                                                                                                                addr072a:
                                                                                                                                                                                                                                                                                                §§push(_loc3_);
                                                                                                                                                                                                                                                                                                if(_loc8_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   addr0731:
                                                                                                                                                                                                                                                                                                   addr0736:
                                                                                                                                                                                                                                                                                                   addr0734:
                                                                                                                                                                                                                                                                                                   §§push(§§pop().replace("{1}",_loc6_));
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                _loc3_ = §§pop();
                                                                                                                                                                                                                                                                                                if(!(_loc9_ && Boolean(_loc1_)))
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   addr074a:
                                                                                                                                                                                                                                                                                                   toolTip = _loc3_;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr074f);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr074f);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr06f2);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr06b2:
                                                                                                                                                                                                                                                                                    addr06b0:
                                                                                                                                                                                                                                                                                    addr06b3:
                                                                                                                                                                                                                                                                                    §§push(§§pop().getString(§§pop(),§§pop() + ""));
                                                                                                                                                                                                                                                                                    if(!(_loc9_ && Boolean(this)))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr06c5:
                                                                                                                                                                                                                                                                                       §§push(§§pop());
                                                                                                                                                                                                                                                                                       if(_loc8_ || Boolean(_loc1_))
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§goto(addr06d4);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr070e);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr073b);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr06b2);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           else
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr06a6:
                                                                                                                                                                                                                                                                              addr06a5:
                                                                                                                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                              §§push("rcl.tooltips.emergencyLayer.notOptimalAssigned");
                                                                                                                                                                                                                                                                              if(_loc8_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§goto(addr06b0);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr06b3);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr06a6);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr06b3);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               else
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr0684:
                                                                                                                                                                                                                                                                  §§push("rcl.tooltips.emergencyLayer");
                                                                                                                                                                                                                                                                  if(!(_loc9_ && Boolean(_loc2_)))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr0695:
                                                                                                                                                                                                                                                                     §§push("");
                                                                                                                                                                                                                                                                     if(_loc8_ || Boolean(_loc2_))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§goto(addr06a5);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr06b3);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr06a6);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr06e3);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         else
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(ResourceManager.getInstance());
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr0684);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr06d4);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr06e3);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr066b);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr070e);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr06a5);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr0695);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr05ac);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr059b);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr0611);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr0605);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr066b);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr05d7);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr05be);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr05b3);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr05b0);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr06b0);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr057c);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr05ac);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr04f7);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr0611);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr074f);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr05e7);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr05f4);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr0736);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr06fb);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr070e);
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        addr03ec:
                                                                                                                                                                        §§push(ResourceManager.getInstance());
                                                                                                                                                                        if(!(_loc9_ && Boolean(_loc3_)))
                                                                                                                                                                        {
                                                                                                                                                                           §§push("rcl.professions");
                                                                                                                                                                           if(_loc8_ || Boolean(this))
                                                                                                                                                                           {
                                                                                                                                                                              addr0411:
                                                                                                                                                                              §§push("");
                                                                                                                                                                              if(!_loc9_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                                 if(!_loc9_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push("rcl.professions.");
                                                                                                                                                                                    if(!(_loc9_ && Boolean(_loc2_)))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(this._data);
                                                                                                                                                                                       if(_loc8_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr043b:
                                                                                                                                                                                          §§push(§§pop().profSpecialisationLocaId);
                                                                                                                                                                                          if(!(_loc9_ && Boolean(_loc3_)))
                                                                                                                                                                                          {
                                                                                                                                                                                             addr044c:
                                                                                                                                                                                             §§push(§§pop() + §§pop().toString());
                                                                                                                                                                                             if(!(_loc9_ && Boolean(_loc3_)))
                                                                                                                                                                                             {
                                                                                                                                                                                                addr045f:
                                                                                                                                                                                                §§push(§§pop().getString(§§pop(),§§pop()));
                                                                                                                                                                                                if(_loc8_ || Boolean(_loc3_))
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr0471:
                                                                                                                                                                                                   §§push(§§pop());
                                                                                                                                                                                                   if(_loc8_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      _loc4_ = §§pop();
                                                                                                                                                                                                      if(_loc8_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr0484:
                                                                                                                                                                                                         §§push(this.badgeImage);
                                                                                                                                                                                                         §§push(LocaUtils);
                                                                                                                                                                                                         §§push("rcl.tooltips.departmentBook");
                                                                                                                                                                                                         if(_loc8_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push("");
                                                                                                                                                                                                            if(!_loc9_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr0498:
                                                                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                                                                               §§push("rcl.tooltips.departmentBook.specialization");
                                                                                                                                                                                                               if(!(_loc9_ && Boolean(this)))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop() + "");
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§pop().toolTip = §§pop().getString(§§pop(),§§pop(),[_loc4_]);
                                                                                                                                                                                                            if(!(_loc9_ && Boolean(_loc1_)))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr04c3);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr074a);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr0498);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr055f);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr070e);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr054f);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr0652);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr0523);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr05b0);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr058c);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr06a6);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr06a5);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr059b);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr0611);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr066b);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr0731);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr05be);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr064b);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr05ac);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr061a);
                                                                                                                                                }
                                                                                                                                                §§goto(addr06b3);
                                                                                                                                             }
                                                                                                                                             §§goto(addr061a);
                                                                                                                                          }
                                                                                                                                          §§goto(addr04cf);
                                                                                                                                       }
                                                                                                                                       §§goto(addr074f);
                                                                                                                                    }
                                                                                                                                    §§goto(addr055f);
                                                                                                                                 }
                                                                                                                                 §§goto(addr032c);
                                                                                                                              }
                                                                                                                              §§goto(addr0734);
                                                                                                                           }
                                                                                                                           §§goto(addr0471);
                                                                                                                        }
                                                                                                                        §§goto(addr074a);
                                                                                                                     }
                                                                                                                     §§goto(addr06c5);
                                                                                                                  }
                                                                                                                  §§goto(addr0703);
                                                                                                               }
                                                                                                               §§goto(addr06fb);
                                                                                                            }
                                                                                                            §§goto(addr0548);
                                                                                                         }
                                                                                                         §§goto(addr074f);
                                                                                                      }
                                                                                                      §§goto(addr0301);
                                                                                                   }
                                                                                                   §§goto(addr0210);
                                                                                                }
                                                                                                §§goto(addr02d2);
                                                                                             }
                                                                                             §§goto(addr044c);
                                                                                          }
                                                                                          §§goto(addr043b);
                                                                                       }
                                                                                       §§goto(addr02aa);
                                                                                    }
                                                                                    §§goto(addr0695);
                                                                                 }
                                                                                 §§goto(addr045f);
                                                                              }
                                                                              §§goto(addr0629);
                                                                           }
                                                                           §§goto(addr04cf);
                                                                        }
                                                                        §§goto(addr074a);
                                                                     }
                                                                     §§goto(addr023b);
                                                                  }
                                                                  §§goto(addr0279);
                                                               }
                                                               §§goto(addr02d2);
                                                            }
                                                            §§goto(addr064b);
                                                         }
                                                         §§goto(addr0193);
                                                      }
                                                      §§goto(addr059b);
                                                   }
                                                   §§goto(addr05ac);
                                                }
                                                §§goto(addr0411);
                                             }
                                             §§goto(addr0684);
                                          }
                                          §§goto(addr024a);
                                       }
                                       §§goto(addr072a);
                                    }
                                    else
                                    {
                                       §§push(this.profImage);
                                       if(!_loc9_)
                                       {
                                          §§push(this._data);
                                          if(_loc8_)
                                          {
                                             §§push(§§pop().profLib);
                                             if(_loc8_ || Boolean(this))
                                             {
                                                §§pop().dynaLibName = §§pop();
                                                if(!(_loc9_ && Boolean(_loc3_)))
                                                {
                                                   addr039c:
                                                   this.profImage.dynaBmpSourceName = this._data.profImage;
                                                   addr0399:
                                                   addr0395:
                                                   if(!(_loc9_ && Boolean(_loc1_)))
                                                   {
                                                      addr03ac:
                                                      this.nameDisplay.text = this._data.name;
                                                      if(_loc8_ || Boolean(_loc2_))
                                                      {
                                                         addr03c7:
                                                         §§push(this.badgeImage);
                                                         if(!(_loc9_ && Boolean(_loc2_)))
                                                         {
                                                            §§pop().dynaBmpSourceName = this._data.profSpecialisationGfxId.toString();
                                                            if(_loc8_)
                                                            {
                                                               §§goto(addr03ec);
                                                            }
                                                            §§goto(addr074f);
                                                         }
                                                         §§goto(addr0484);
                                                      }
                                                   }
                                                }
                                                §§goto(addr03ec);
                                             }
                                             §§goto(addr039c);
                                          }
                                          §§goto(addr0399);
                                       }
                                       §§goto(addr0395);
                                    }
                                 }
                                 §§goto(addr05eb);
                              }
                              §§goto(addr03c7);
                           }
                           §§goto(addr072a);
                        }
                        §§goto(addr00f9);
                     }
                     §§goto(addr03ac);
                  }
                  addr074f:
                  return;
               }
               §§goto(addr00c8);
            }
            §§goto(addr028d);
         }
         §§goto(addr009a);
      }
      
      private function handleRemoveClick() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            dispatchEvent(new Event(SPECIALIST_REMOVE_CLICKED,true));
         }
      }
      
      private function handleCreationComplete() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            §§push(this.assignButton);
            §§push(ResourceManager.getInstance());
            §§push("rcl.emergencybook.layer");
            if(!(_loc1_ && _loc1_))
            {
               §§push("");
               if(!_loc1_)
               {
                  addr0042:
                  §§push(§§pop() + §§pop());
                  §§push("rcl.emergencybook.layer.click");
                  if(!_loc1_)
                  {
                     §§push(§§pop() + "");
                  }
               }
               §§pop().label = §§pop().getString(§§pop(),§§pop());
               §§goto(addr0055);
            }
            §§goto(addr0042);
         }
         addr0055:
      }
      
      private function _SpecialistSlotItemrenderer_Group1_i() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || _loc2_)
            {
               _loc1_.percentHeight = 100;
               if(_loc2_)
               {
                  _loc1_.mxmlContent = [this._SpecialistSlotItemrenderer_VGroup1_c()];
                  if(!_loc3_)
                  {
                     addr005d:
                     _loc1_.id = "emptySlot";
                     if(_loc2_)
                     {
                        addr0072:
                        if(!_loc1_.document)
                        {
                           if(_loc2_)
                           {
                              addr007e:
                              _loc1_.document = this;
                              if(_loc2_)
                              {
                                 addr0087:
                                 this.emptySlot = _loc1_;
                                 if(!_loc3_)
                                 {
                                    addr0091:
                                    BindingManager.executeBindings(this,"emptySlot",this.emptySlot);
                                 }
                              }
                           }
                           return _loc1_;
                        }
                        §§goto(addr0087);
                     }
                     §§goto(addr007e);
                  }
                  §§goto(addr0072);
               }
               §§goto(addr0091);
            }
            §§goto(addr005d);
         }
         §§goto(addr007e);
      }
      
      private function _SpecialistSlotItemrenderer_VGroup1_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || _loc2_)
            {
               _loc1_.percentHeight = 100;
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.gap = -10;
                  if(_loc2_)
                  {
                     _loc1_.mxmlContent = [this._SpecialistSlotItemrenderer_StickyNoteComponent1_c(),this._SpecialistSlotItemrenderer_Group2_c()];
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        if(!_loc1_.document)
                        {
                           if(!(_loc3_ && _loc2_))
                           {
                              addr0097:
                              _loc1_.document = this;
                           }
                        }
                     }
                  }
                  §§goto(addr009b);
               }
               §§goto(addr0097);
            }
            addr009b:
            return _loc1_;
         }
         §§goto(addr0097);
      }
      
      private function _SpecialistSlotItemrenderer_StickyNoteComponent1_c() : StickyNoteComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         if(_loc3_)
         {
            _loc1_.tapeTop = true;
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.percentWidth = 100;
               if(_loc3_)
               {
                  addr0049:
                  _loc1_.height = 140;
                  if(_loc3_ || _loc2_)
                  {
                     §§goto(addr0068);
                  }
               }
               §§goto(addr007d);
            }
            addr0068:
            _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._SpecialistSlotItemrenderer_Array4_c);
            if(!_loc2_)
            {
               addr007d:
               if(!_loc1_.document)
               {
                  if(!(_loc2_ && _loc3_))
                  {
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0049);
      }
      
      private function _SpecialistSlotItemrenderer_Array4_c() : Array
      {
         return [this._SpecialistSlotItemrenderer_VGroup2_c()];
      }
      
      private function _SpecialistSlotItemrenderer_VGroup2_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.percentWidth = 100;
            if(!_loc3_)
            {
               _loc1_.percentHeight = 100;
               if(_loc2_)
               {
                  addr0047:
                  _loc1_.verticalAlign = "middle";
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     _loc1_.horizontalAlign = "center";
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        addr0077:
                        _loc1_.mxmlContent = [this._SpecialistSlotItemrenderer_BriskImageDynaLib1_i(),this._SpecialistSlotItemrenderer_LocaLabel1_i()];
                        if(_loc2_)
                        {
                           addr008d:
                           if(!_loc1_.document)
                           {
                              if(!_loc3_)
                              {
                                 addr0099:
                                 _loc1_.document = this;
                              }
                           }
                           §§goto(addr009d);
                        }
                        §§goto(addr0099);
                     }
                     addr009d:
                     return _loc1_;
                  }
                  §§goto(addr0077);
               }
               §§goto(addr008d);
            }
            §§goto(addr0099);
         }
         §§goto(addr0047);
      }
      
      private function _SpecialistSlotItemrenderer_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.dynaLibName = "big_badges";
            if(_loc2_ || _loc2_)
            {
               addr003a:
               _loc1_.dynaSWFFileName = "gui_ui_emergencyDepartmentsIcons";
               if(_loc2_)
               {
                  _loc1_.id = "serviceImage";
                  if(_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || Boolean(_loc1_))
                        {
                           addr0071:
                           _loc1_.document = this;
                           if(_loc2_ || Boolean(_loc1_))
                           {
                              addr008f:
                              this.serviceImage = _loc1_;
                              if(!(_loc3_ && Boolean(this)))
                              {
                                 addr00a1:
                                 BindingManager.executeBindings(this,"serviceImage",this.serviceImage);
                              }
                           }
                        }
                        §§goto(addr00ae);
                     }
                     §§goto(addr008f);
                  }
                  addr00ae:
                  return _loc1_;
               }
               §§goto(addr00a1);
            }
            §§goto(addr0071);
         }
         §§goto(addr003a);
      }
      
      private function _SpecialistSlotItemrenderer_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || Boolean(this))
            {
               §§goto(addr0030);
            }
            §§goto(addr0043);
         }
         addr0030:
         _loc1_.maxDisplayedLines = 3;
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            addr0043:
            _loc1_.styleName = "requiredSpecialistSlot";
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.text = "DEV: Required Firefighter level 3";
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.id = "requiredLabel";
                  if(_loc2_)
                  {
                     addr0082:
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || Boolean(this))
                        {
                           addr0096:
                           _loc1_.document = this;
                           if(!(_loc3_ && Boolean(_loc1_)))
                           {
                              addr00b4:
                              this.requiredLabel = _loc1_;
                              if(!(_loc3_ && _loc2_))
                              {
                                 addr00c6:
                                 BindingManager.executeBindings(this,"requiredLabel",this.requiredLabel);
                              }
                              §§goto(addr00d3);
                           }
                           §§goto(addr00c6);
                        }
                        §§goto(addr00d3);
                     }
                  }
                  §§goto(addr00b4);
               }
               §§goto(addr0096);
            }
            §§goto(addr0082);
         }
         addr00d3:
         return _loc1_;
      }
      
      private function _SpecialistSlotItemrenderer_Group2_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.mxmlContent = [this._SpecialistSlotItemrenderer_MultistateButton1_i()];
               if(_loc2_)
               {
                  §§goto(addr0050);
               }
            }
            §§goto(addr005c);
         }
         addr0050:
         if(!_loc1_.document)
         {
            if(!_loc3_)
            {
               addr005c:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _SpecialistSlotItemrenderer_MultistateButton1_i() : MultistateButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:MultistateButton = new MultistateButton();
         if(!_loc3_)
         {
            _loc1_.percentWidth = 90;
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.styleName = "emergencySlotButton";
               if(!_loc3_)
               {
                  _loc1_.horizontalCenter = 0;
                  if(_loc2_)
                  {
                     _loc1_.verticalCenter = 0;
                     if(!(_loc3_ && Boolean(this)))
                     {
                        _loc1_.label = "";
                        if(_loc2_)
                        {
                           §§goto(addr006e);
                        }
                     }
                     §§goto(addr00aa);
                  }
                  §§goto(addr0097);
               }
               addr006e:
               _loc1_.id = "assignButton";
               if(_loc2_ || _loc2_)
               {
                  addr008b:
                  if(!_loc1_.document)
                  {
                     if(!_loc3_)
                     {
                        addr0097:
                        _loc1_.document = this;
                        if(!_loc3_)
                        {
                           §§goto(addr00a0);
                        }
                     }
                     §§goto(addr00aa);
                  }
               }
               addr00a0:
               this.assignButton = _loc1_;
               if(_loc2_)
               {
                  addr00aa:
                  BindingManager.executeBindings(this,"assignButton",this.assignButton);
               }
               §§goto(addr00b7);
            }
            addr00b7:
            return _loc1_;
         }
         §§goto(addr008b);
      }
      
      private function _SpecialistSlotItemrenderer_Group3_i() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_)
            {
               _loc1_.height = 165;
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.mxmlContent = [this._SpecialistSlotItemrenderer_StickyNoteComponent2_c(),this._SpecialistSlotItemrenderer_BriskImageDynaLib2_i(),this._SpecialistSlotItemrenderer_BriskImageDynaLib3_i(),this._SpecialistSlotItemrenderer_Group4_c()];
                  if(_loc3_ || _loc2_)
                  {
                     addr0074:
                     _loc1_.id = "filledSlot";
                     if(!_loc2_)
                     {
                        addr007f:
                        if(!_loc1_.document)
                        {
                           if(!(_loc2_ && _loc3_))
                           {
                              _loc1_.document = this;
                              if(_loc3_)
                              {
                                 addr00a9:
                                 this.filledSlot = _loc1_;
                                 if(_loc3_ || _loc2_)
                                 {
                                    addr00bb:
                                    BindingManager.executeBindings(this,"filledSlot",this.filledSlot);
                                 }
                              }
                              return _loc1_;
                           }
                           §§goto(addr00bb);
                        }
                        §§goto(addr00a9);
                     }
                     §§goto(addr00bb);
                  }
               }
               §§goto(addr007f);
            }
            §§goto(addr0074);
         }
         §§goto(addr00bb);
      }
      
      private function _SpecialistSlotItemrenderer_StickyNoteComponent2_c() : StickyNoteComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.percentWidth = 93;
            if(!_loc2_)
            {
               §§goto(addr0032);
            }
            §§goto(addr0072);
         }
         addr0032:
         _loc1_.height = 60;
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.bottom = 0;
            if(_loc3_)
            {
               _loc1_.horizontalCenter = 0;
               if(!_loc2_)
               {
                  addr0072:
                  _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._SpecialistSlotItemrenderer_Array8_c);
                  if(_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && Boolean(this)))
                        {
                           _loc1_.document = this;
                        }
                     }
                  }
               }
               §§goto(addr009f);
            }
            §§goto(addr0072);
         }
         addr009f:
         return _loc1_;
      }
      
      private function _SpecialistSlotItemrenderer_Array8_c() : Array
      {
         return [this._SpecialistSlotItemrenderer_LocaLabel2_i()];
      }
      
      private function _SpecialistSlotItemrenderer_LocaLabel2_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.percentWidth = 100;
            if(!_loc2_)
            {
               _loc1_.height = 35;
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.maxDisplayedLines = 1;
                  if(_loc3_)
                  {
                     addr005c:
                     _loc1_.styleName = "specialistSlotName";
                     if(!_loc2_)
                     {
                        addr0067:
                        _loc1_.id = "nameDisplay";
                        if(!_loc2_)
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc3_)
                              {
                                 _loc1_.document = this;
                                 if(_loc3_ || _loc3_)
                                 {
                                    addr009b:
                                    this.nameDisplay = _loc1_;
                                    if(_loc3_ || Boolean(this))
                                    {
                                       addr00ad:
                                       BindingManager.executeBindings(this,"nameDisplay",this.nameDisplay);
                                    }
                                    §§goto(addr00ba);
                                 }
                                 §§goto(addr00ad);
                              }
                              addr00ba:
                              return _loc1_;
                           }
                        }
                        §§goto(addr009b);
                     }
                     §§goto(addr00ad);
                  }
                  §§goto(addr009b);
               }
               §§goto(addr0067);
            }
            §§goto(addr00ad);
         }
         §§goto(addr005c);
      }
      
      private function _SpecialistSlotItemrenderer_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_FriendBook";
            if(_loc3_)
            {
               addr0029:
               _loc1_.horizontalCenter = 0;
               if(_loc3_ || Boolean(this))
               {
                  _loc1_.dynaBmpSourceName = "polaroid_friend";
                  if(_loc3_)
                  {
                     _loc1_.id = "profImage";
                     if(!_loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!(_loc2_ && _loc2_))
                           {
                              addr007d:
                              _loc1_.document = this;
                              if(_loc3_)
                              {
                                 addr0086:
                                 this.profImage = _loc1_;
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    addr0098:
                                    BindingManager.executeBindings(this,"profImage",this.profImage);
                                 }
                                 §§goto(addr00a5);
                              }
                              §§goto(addr0098);
                           }
                           addr00a5:
                           return _loc1_;
                        }
                        §§goto(addr0086);
                     }
                     §§goto(addr0098);
                  }
                  §§goto(addr0086);
               }
               §§goto(addr007d);
            }
            §§goto(addr0098);
         }
         §§goto(addr0029);
      }
      
      private function _SpecialistSlotItemrenderer_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.dynaLibName = "diagonal_badges";
            if(_loc2_)
            {
               _loc1_.top = 0;
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.left = 0;
                  if(_loc2_)
                  {
                     _loc1_.dynaSWFFileName = "gui_ui_emergencyDepartmentsIcons";
                     if(!(_loc3_ && Boolean(this)))
                     {
                        addr006d:
                        _loc1_.dynaBmpSourceName = "";
                        if(_loc2_ || _loc2_)
                        {
                           addr007f:
                           _loc1_.id = "badgeImage";
                           if(!(_loc3_ && _loc3_))
                           {
                              addr009e:
                              if(!_loc1_.document)
                              {
                                 if(_loc2_)
                                 {
                                    addr00aa:
                                    _loc1_.document = this;
                                    if(!_loc3_)
                                    {
                                       addr00b3:
                                       this.badgeImage = _loc1_;
                                       if(_loc2_)
                                       {
                                          addr00bd:
                                          BindingManager.executeBindings(this,"badgeImage",this.badgeImage);
                                       }
                                       §§goto(addr00ca);
                                    }
                                    §§goto(addr00bd);
                                 }
                                 addr00ca:
                                 return _loc1_;
                              }
                           }
                           §§goto(addr00b3);
                        }
                     }
                     §§goto(addr00aa);
                  }
                  §§goto(addr00bd);
               }
               §§goto(addr006d);
            }
            §§goto(addr009e);
         }
         §§goto(addr007f);
      }
      
      private function _SpecialistSlotItemrenderer_Group4_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || _loc3_)
         {
            _loc1_.top = 0;
            if(_loc3_ || Boolean(this))
            {
               _loc1_.right = 0;
               if(_loc3_)
               {
                  _loc1_.width = 25;
                  if(_loc3_ || _loc2_)
                  {
                     _loc1_.height = 25;
                     if(!_loc2_)
                     {
                        _loc1_.mxmlContent = [this._SpecialistSlotItemrenderer_DynamicImageButton1_i()];
                        addr006d:
                        if(!(_loc2_ && Boolean(this)))
                        {
                           addr008f:
                           if(!_loc1_.document)
                           {
                              if(!(_loc2_ && Boolean(_loc1_)))
                              {
                                 addr00a3:
                                 _loc1_.document = this;
                              }
                           }
                           §§goto(addr00a7);
                        }
                     }
                     §§goto(addr00a3);
                  }
                  addr00a7:
                  return _loc1_;
               }
               §§goto(addr008f);
            }
         }
         §§goto(addr006d);
      }
      
      private function _SpecialistSlotItemrenderer_DynamicImageButton1_i() : DynamicImageButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         if(!_loc2_)
         {
            _loc1_.verticalCenter = 0;
            if(_loc3_)
            {
               _loc1_.horizontalCenter = 0;
               if(_loc3_ || _loc3_)
               {
                  _loc1_.styleName = "removeProfessionalButton";
                  if(_loc3_)
                  {
                     _loc1_.addEventListener("click",this.__removeButton_click);
                     if(_loc3_)
                     {
                        addr0067:
                        _loc1_.id = "removeButton";
                        if(!(_loc2_ && _loc3_))
                        {
                           if(!_loc1_.document)
                           {
                              if(!_loc2_)
                              {
                                 addr0093:
                                 _loc1_.document = this;
                                 if(_loc3_)
                                 {
                                    addr009c:
                                    this.removeButton = _loc1_;
                                    if(_loc3_ || Boolean(_loc1_))
                                    {
                                       addr00ae:
                                       BindingManager.executeBindings(this,"removeButton",this.removeButton);
                                    }
                                 }
                              }
                              §§goto(addr00bb);
                           }
                           §§goto(addr009c);
                        }
                        §§goto(addr0093);
                     }
                     §§goto(addr00ae);
                  }
                  §§goto(addr0067);
               }
               §§goto(addr00ae);
            }
            addr00bb:
            return _loc1_;
         }
         §§goto(addr0093);
      }
      
      public function __removeButton_click(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.handleRemoveClick();
         }
      }
      
      public function ___SpecialistSlotItemrenderer_ItemRenderer1_click(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.handleClick();
         }
      }
      
      public function ___SpecialistSlotItemrenderer_ItemRenderer1_creationComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this.handleCreationComplete();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get assignButton() : MultistateButton
      {
         return this._1474880769assignButton;
      }
      
      public function set assignButton(param1:MultistateButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1474880769assignButton;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1474880769assignButton = param1;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0066:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"assignButton",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0075);
               }
               §§goto(addr0066);
            }
            addr0075:
            return;
         }
         §§goto(addr0066);
      }
      
      [Bindable(event="propertyChange")]
      public function get badgeImage() : BriskImageDynaLib
      {
         return this._1060367224badgeImage;
      }
      
      public function set badgeImage(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1060367224badgeImage;
         if(!(_loc3_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1060367224badgeImage = param1;
                  if(_loc4_ || Boolean(param1))
                  {
                     §§goto(addr0061);
                  }
                  §§goto(addr0071);
               }
               addr0061:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc4_)
                  {
                     addr0071:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"badgeImage",_loc2_,param1));
                  }
               }
               §§goto(addr0080);
            }
            addr0080:
            return;
         }
         §§goto(addr0071);
      }
      
      [Bindable(event="propertyChange")]
      public function get emptySlot() : Group
      {
         return this._1420004117emptySlot;
      }
      
      public function set emptySlot(param1:Group) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1420004117emptySlot;
         if(!(_loc3_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || _loc3_)
               {
                  this._1420004117emptySlot = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(param1))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"emptySlot",_loc2_,param1));
                        }
                     }
                  }
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get filledSlot() : Group
      {
         return this._76117376filledSlot;
      }
      
      public function set filledSlot(param1:Group) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._76117376filledSlot;
         if(!(_loc4_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._76117376filledSlot = param1;
                  addr0043:
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(this)))
                        {
                           addr0073:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"filledSlot",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0082);
               }
               §§goto(addr0073);
            }
            addr0082:
            return;
         }
         §§goto(addr0043);
      }
      
      [Bindable(event="propertyChange")]
      public function get nameDisplay() : LocaLabel
      {
         return this._1844466615nameDisplay;
      }
      
      public function set nameDisplay(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1844466615nameDisplay;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1844466615nameDisplay = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0053:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nameDisplay",_loc2_,param1));
                        }
                     }
                     §§goto(addr0062);
                  }
               }
               §§goto(addr0053);
            }
            addr0062:
            return;
         }
         §§goto(addr0053);
      }
      
      [Bindable(event="propertyChange")]
      public function get profImage() : BriskImageDynaLib
      {
         return this._1034926718profImage;
      }
      
      public function set profImage(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1034926718profImage;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  this._1034926718profImage = param1;
                  addr003e:
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || _loc3_)
                        {
                           addr006c:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"profImage",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007b);
               }
               §§goto(addr006c);
            }
            addr007b:
            return;
         }
         §§goto(addr003e);
      }
      
      [Bindable(event="propertyChange")]
      public function get removeButton() : DynamicImageButton
      {
         return this._1339123498removeButton;
      }
      
      public function set removeButton(param1:DynamicImageButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1339123498removeButton;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(_loc2_))
               {
                  this._1339123498removeButton = param1;
                  if(_loc4_ || Boolean(this))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || _loc3_)
                        {
                           addr0078:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"removeButton",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0078);
      }
      
      [Bindable(event="propertyChange")]
      public function get requiredLabel() : LocaLabel
      {
         return this._1042337429requiredLabel;
      }
      
      public function set requiredLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1042337429requiredLabel;
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(_loc2_))
               {
                  addr0049:
                  this._1042337429requiredLabel = param1;
                  if(_loc4_ || Boolean(param1))
                  {
                     addr0068:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(_loc2_))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"requiredLabel",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr008f);
               }
               §§goto(addr0068);
            }
            addr008f:
            return;
         }
         §§goto(addr0049);
      }
      
      [Bindable(event="propertyChange")]
      public function get serviceImage() : BriskImageDynaLib
      {
         return this._339532710serviceImage;
      }
      
      public function set serviceImage(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._339532710serviceImage;
         if(!(_loc3_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._339532710serviceImage = param1;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     §§goto(addr0060);
                  }
                  §§goto(addr0077);
               }
               addr0060:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     addr0077:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"serviceImage",_loc2_,param1));
                  }
               }
               §§goto(addr0086);
            }
         }
         addr0086:
      }
   }
}

