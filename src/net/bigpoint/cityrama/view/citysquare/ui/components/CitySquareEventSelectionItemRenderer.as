package net.bigpoint.cityrama.view.citysquare.ui.components
{
   import com.greensock.TweenMax;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import mx.binding.BindingManager;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.cityrama.errorHandling.errors.RamaCityError;
   import net.bigpoint.cityrama.view.citysquare.ui.vo.EventSelectionVo;
   import net.bigpoint.cityrama.view.common.components.BlueBarComponent;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.StickyNoteComponent;
   import net.bigpoint.cityrama.view.residentialBook.ui.components.ProgressBarComponent;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.components.supportClasses.ItemRenderer;
   
   public class CitySquareEventSelectionItemRenderer extends ItemRenderer implements IStateClient2
   {
      
      public static const ITEM_CLICKED:String = "ITEMCLICKED";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_ || CitySquareEventSelectionItemRenderer)
      {
         ITEM_CLICKED = "ITEMCLICKED";
      }
      
      private var _396715431availabilityLabel:LocaLabel;
      
      private var _15876775blueBar:BlueBarComponent;
      
      private var _221873225bottomPostitGroup:Group;
      
      private var _669363565eventHeaderLabel:LocaLabel;
      
      private var _31082035eventIcon:BriskImageDynaLib;
      
      private var _963827425eventImage:BriskImageDynaLib;
      
      private var _1161933810headerGroup:Group;
      
      private var _924938225lockedGfx:BriskImageDynaLib;
      
      private var _1950311277mainPartGroup:Group;
      
      private var _2085991647polaroidframe:BriskImageDynaLib;
      
      private var _1131509414progressBar:ProgressBarComponent;
      
      private var _1574849497timerBarIcon:BriskImageDynaLib;
      
      private var _1639236154timerGroup:HGroup;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _dirty:Boolean;
      
      private var _data:EventSelectionVo;
      
      public function CitySquareEventSelectionItemRenderer()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            super();
            if(!(_loc1_ && Boolean(this)))
            {
               mx_internal::_document = this;
               if(_loc2_ || _loc1_)
               {
                  this.minWidth = 205;
                  if(_loc2_ || _loc1_)
                  {
                     this.width = 205;
                     if(!_loc1_)
                     {
                        this.autoDrawBackground = false;
                        if(!_loc1_)
                        {
                           this.mxmlContent = [this._CitySquareEventSelectionItemRenderer_VGroup1_c()];
                           if(_loc2_ || _loc2_)
                           {
                              addr0093:
                              this.currentState = "normal";
                              if(!(_loc1_ && _loc2_))
                              {
                                 addr00a7:
                                 this.addEventListener("removedFromStage",this.___CitySquareEventSelectionItemRenderer_ItemRenderer1_removedFromStage);
                                 if(!(_loc1_ && _loc2_))
                                 {
                                    §§goto(addr00c0);
                                 }
                                 §§goto(addr00d9);
                              }
                              addr00c0:
                              this.addEventListener("click",this.___CitySquareEventSelectionItemRenderer_ItemRenderer1_click);
                              if(!(_loc1_ && _loc2_))
                              {
                                 states = [new State({
                                    "name":"normal",
                                    "overrides":[]
                                 }),new State({
                                    "name":"hovered",
                                    "overrides":[new SetProperty().initializeFromObject({
                                       "target":"bottomPostitGroup",
                                       "name":"top",
                                       "value":242
                                    }),new SetProperty().initializeFromObject({
                                       "target":"mainPartGroup",
                                       "name":"top",
                                       "value":32
                                    })]
                                 })];
                                 addr00d9:
                              }
                              §§goto(addr013c);
                           }
                           §§goto(addr00d9);
                        }
                        §§goto(addr00a7);
                     }
                     addr013c:
                     return;
                  }
               }
            }
            §§goto(addr00c0);
         }
         §§goto(addr0093);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            super.moduleFactory = param1;
            if(_loc2_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!_loc3_)
                  {
                     return;
                  }
               }
               else
               {
                  addr0049:
                  this.__moduleFactoryInitialized = true;
               }
               §§goto(addr004f);
            }
            §§goto(addr0049);
         }
         addr004f:
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            super.initialize();
         }
      }
      
      override public function set data(param1:Object) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            §§push(param1 is EventSelectionVo);
            if(_loc3_)
            {
               if(§§pop())
               {
                  if(!(_loc2_ && Boolean(param1)))
                  {
                     addr0051:
                     if(!RandomUtilities.isEqual(param1,this._data))
                     {
                        if(_loc3_ || _loc2_)
                        {
                           super.data = param1;
                           if(_loc3_)
                           {
                              addr0077:
                              this._dirty = true;
                              if(_loc3_ || _loc3_)
                              {
                                 addr0089:
                                 this._data = param1 as EventSelectionVo;
                                 if(!_loc2_)
                                 {
                                    addr0097:
                                    invalidateProperties();
                                 }
                                 §§goto(addr009c);
                              }
                              §§goto(addr0097);
                           }
                           §§goto(addr009c);
                        }
                        §§goto(addr0089);
                     }
                     §§goto(addr009c);
                  }
                  §§goto(addr0077);
               }
               addr009c:
               return;
            }
            §§goto(addr0051);
         }
         §§goto(addr0077);
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc1_))
         {
            §§push(this._data);
            if(_loc3_)
            {
               §§push(§§pop() == null);
               if(_loc3_ || _loc1_)
               {
                  §§push(!§§pop());
                  if(_loc3_)
                  {
                     var _temp_4:* = §§pop();
                     §§push(_temp_4);
                     if(_temp_4)
                     {
                        if(!_loc2_)
                        {
                           §§pop();
                           if(_loc3_)
                           {
                              addr0059:
                              §§push(this._dirty);
                              if(!_loc2_)
                              {
                                 addr0058:
                                 §§push(§§pop());
                              }
                              if(§§pop())
                              {
                                 if(!_loc2_)
                                 {
                                    this._dirty = false;
                                    if(!_loc2_)
                                    {
                                       TweenMax.killDelayedCallsTo(this.updateTimer);
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          var _temp_6:* = this;
                                          var _loc1_:*;
                                          this.mouseChildren = _loc1_ = true;
                                          _temp_6.mouseEnabled = _loc1_;
                                          if(!_loc2_)
                                          {
                                             addr0096:
                                             addr009a:
                                             if(this._data.state != EventSelectionVo.EMPTY_SLOT)
                                             {
                                                if(_loc3_ || _loc1_)
                                                {
                                                   §§push(this.eventImage);
                                                   if(!_loc2_)
                                                   {
                                                      §§push(this._data);
                                                      if(!(_loc2_ && Boolean(this)))
                                                      {
                                                         §§push(§§pop().gfxPackId);
                                                         if(!(_loc2_ && Boolean(this)))
                                                         {
                                                            §§pop().dynaSWFFileName = §§pop().toString();
                                                            if(_loc3_)
                                                            {
                                                               addr00eb:
                                                               §§push(this.eventImage);
                                                               if(!(_loc2_ && Boolean(this)))
                                                               {
                                                                  addr0104:
                                                                  addr0100:
                                                                  §§push(this._data.gfxPackId.toString() + "_gui_popup_events");
                                                                  if(!_loc2_)
                                                                  {
                                                                     §§pop().dynaLibName = §§pop();
                                                                     if(_loc3_ || _loc1_)
                                                                     {
                                                                        addr0120:
                                                                        §§push(this.eventImage);
                                                                        if(!_loc2_)
                                                                        {
                                                                           addr012d:
                                                                           §§pop().dynaBmpSourceName = "preview";
                                                                           if(!(_loc2_ && _loc1_))
                                                                           {
                                                                              addr0140:
                                                                              this.eventImage.filters = [];
                                                                              addr013c:
                                                                              if(_loc3_)
                                                                              {
                                                                                 addr014a:
                                                                                 this.lockedGfx.includeInLayout = this.lockedGfx.visible = false;
                                                                              }
                                                                           }
                                                                           addr07b6:
                                                                           _loc1_ = this._data.state;
                                                                           if(_loc3_)
                                                                           {
                                                                              §§push(EventSelectionVo.STATE_RUNNING);
                                                                              if(!_loc2_)
                                                                              {
                                                                                 §§push(_loc1_);
                                                                                 if(!(_loc2_ && Boolean(_loc1_)))
                                                                                 {
                                                                                    if(§§pop() === §§pop())
                                                                                    {
                                                                                       if(_loc3_ || Boolean(_loc1_))
                                                                                       {
                                                                                          §§push(0);
                                                                                          if(_loc3_ || Boolean(_loc1_))
                                                                                          {
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr0878:
                                                                                          §§push(3);
                                                                                          if(_loc3_ || _loc3_)
                                                                                          {
                                                                                          }
                                                                                       }
                                                                                       addr0897:
                                                                                       switch(§§pop())
                                                                                       {
                                                                                          case 0:
                                                                                             §§push(this.eventHeaderLabel);
                                                                                             if(!_loc2_)
                                                                                             {
                                                                                                §§push(LocaUtils);
                                                                                                §§push("rcl.citysquarequests.");
                                                                                                if(!(_loc2_ && Boolean(_loc1_)))
                                                                                                {
                                                                                                   §§push(§§pop() + this._data.localePackId);
                                                                                                }
                                                                                                §§push("rcl.citysquarequests.");
                                                                                                if(!_loc2_)
                                                                                                {
                                                                                                   §§push(§§pop() + this._data.localePackId);
                                                                                                   if(!(_loc2_ && Boolean(_loc1_)))
                                                                                                   {
                                                                                                      addr01a1:
                                                                                                      §§push(§§pop() + ".layer.name");
                                                                                                   }
                                                                                                   §§push(§§pop().getString(§§pop(),§§pop()));
                                                                                                   if(_loc3_)
                                                                                                   {
                                                                                                      §§pop().text = §§pop();
                                                                                                      if(!_loc2_)
                                                                                                      {
                                                                                                         §§push(this.eventIcon);
                                                                                                         if(_loc3_)
                                                                                                         {
                                                                                                            §§push("quest_bubble_icon_trophy");
                                                                                                            if(!_loc2_)
                                                                                                            {
                                                                                                               §§pop().dynaBmpSourceName = §§pop();
                                                                                                               if(!_loc2_)
                                                                                                               {
                                                                                                                  §§push(this.eventIcon);
                                                                                                                  if(!_loc2_)
                                                                                                                  {
                                                                                                                     §§push("gui_ui_questSide");
                                                                                                                     if(!_loc2_)
                                                                                                                     {
                                                                                                                        §§pop().dynaLibName = §§pop();
                                                                                                                        if(!_loc2_)
                                                                                                                        {
                                                                                                                           §§push(this.timerBarIcon);
                                                                                                                           if(_loc3_ || Boolean(this))
                                                                                                                           {
                                                                                                                              §§push("gui_popup_citysquare_general");
                                                                                                                              if(!(_loc2_ && Boolean(_loc1_)))
                                                                                                                              {
                                                                                                                                 §§pop().dynaLibName = §§pop();
                                                                                                                                 if(_loc3_ || _loc3_)
                                                                                                                                 {
                                                                                                                                    §§push(this.timerBarIcon);
                                                                                                                                    if(_loc3_)
                                                                                                                                    {
                                                                                                                                       §§push("trophy_small");
                                                                                                                                       if(_loc3_ || Boolean(this))
                                                                                                                                       {
                                                                                                                                          §§pop().dynaBmpSourceName = §§pop();
                                                                                                                                          if(!(_loc2_ && Boolean(this)))
                                                                                                                                          {
                                                                                                                                             §§push(this.availabilityLabel);
                                                                                                                                             if(_loc3_)
                                                                                                                                             {
                                                                                                                                                §§push(LocaUtils.getString("rcl.citysquare.questselection","rcl.citysquare.questselection.state.running"));
                                                                                                                                                if(!(_loc2_ && Boolean(this)))
                                                                                                                                                {
                                                                                                                                                   §§pop().text = §§pop();
                                                                                                                                                   if(!(_loc2_ && _loc3_))
                                                                                                                                                   {
                                                                                                                                                      addr026e:
                                                                                                                                                      §§push(this.availabilityLabel);
                                                                                                                                                      if(!_loc2_)
                                                                                                                                                      {
                                                                                                                                                         §§push(1);
                                                                                                                                                         if(_loc3_)
                                                                                                                                                         {
                                                                                                                                                            §§pop().maxDisplayedLines = §§pop();
                                                                                                                                                            if(_loc3_ || Boolean(_loc1_))
                                                                                                                                                            {
                                                                                                                                                               §§push(this.progressBar);
                                                                                                                                                               if(_loc3_)
                                                                                                                                                               {
                                                                                                                                                                  §§pop().progress = this._data.currentProgress;
                                                                                                                                                                  if(!(_loc2_ && _loc3_))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(this.progressBar);
                                                                                                                                                                     if(!_loc2_)
                                                                                                                                                                     {
                                                                                                                                                                        §§pop().label = Math.floor(this._data.currentProgress * 100) + "%";
                                                                                                                                                                        if(!_loc2_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(this.progressBar);
                                                                                                                                                                           if(_loc3_ || Boolean(_loc1_))
                                                                                                                                                                           {
                                                                                                                                                                              addr02e4:
                                                                                                                                                                              §§push(ProgressBarComponent.YELLOW_BAR);
                                                                                                                                                                              if(!(_loc2_ && Boolean(this)))
                                                                                                                                                                              {
                                                                                                                                                                                 §§pop().barColours = §§pop();
                                                                                                                                                                                 if(!_loc2_)
                                                                                                                                                                                 {
                                                                                                                                                                                    var _temp_30:* = this.timerGroup;
                                                                                                                                                                                    this.timerGroup.visible = _loc1_ = true;
                                                                                                                                                                                    _temp_30.includeInLayout = _loc1_;
                                                                                                                                                                                    if(!(_loc3_ || _loc2_))
                                                                                                                                                                                    {
                                                                                                                                                                                       addr06a2:
                                                                                                                                                                                       this.eventHeaderLabel.text = LocaUtils.getString("rcl.citysquare.questselection","rcl.citysquare.questselection.empty.header");
                                                                                                                                                                                       §§goto(addr0692);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr08b2);
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    addr042b:
                                                                                                                                                                                    §§push(this.availabilityLabel);
                                                                                                                                                                                    if(_loc3_ || _loc3_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(LocaUtils.getString("rcl.citysquare.questselection","rcl.citysquare.questselection.state.available"));
                                                                                                                                                                                       if(!(_loc2_ && Boolean(this)))
                                                                                                                                                                                       {
                                                                                                                                                                                          addr0462:
                                                                                                                                                                                          §§pop().text = §§pop();
                                                                                                                                                                                          if(_loc3_ || _loc2_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(this.availabilityLabel);
                                                                                                                                                                                             if(!(_loc2_ && _loc2_))
                                                                                                                                                                                             {
                                                                                                                                                                                                addr0482:
                                                                                                                                                                                                §§push(1);
                                                                                                                                                                                                if(_loc3_ || _loc3_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§pop().maxDisplayedLines = §§pop();
                                                                                                                                                                                                   if(_loc3_ || Boolean(this))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr04a1:
                                                                                                                                                                                                      this.setTimer();
                                                                                                                                                                                                      TweenMax.delayedCall(1,this.updateTimer);
                                                                                                                                                                                                      if(_loc3_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr04c1:
                                                                                                                                                                                                         this.progressBar.barColours = ProgressBarComponent.BLUE_BAR;
                                                                                                                                                                                                         addr04bb:
                                                                                                                                                                                                         addr04b7:
                                                                                                                                                                                                         if(_loc3_ || _loc1_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            var _temp_47:* = this.timerGroup;
                                                                                                                                                                                                            this.timerGroup.visible = _loc1_ = true;
                                                                                                                                                                                                            _temp_47.includeInLayout = _loc1_;
                                                                                                                                                                                                            if(_loc2_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr05c8:
                                                                                                                                                                                                               §§push(this.availabilityLabel);
                                                                                                                                                                                                               if(!_loc2_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr05d1:
                                                                                                                                                                                                                  §§push(this.upcomingText);
                                                                                                                                                                                                                  if(!(_loc2_ && _loc3_))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr05e3:
                                                                                                                                                                                                                     §§pop().text = §§pop();
                                                                                                                                                                                                                     if(_loc3_ || _loc1_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(this.availabilityLabel);
                                                                                                                                                                                                                        if(_loc3_ || Boolean(this))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr0603:
                                                                                                                                                                                                                           §§push(4);
                                                                                                                                                                                                                           if(_loc3_ || _loc1_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr0612:
                                                                                                                                                                                                                              §§pop().maxDisplayedLines = §§pop();
                                                                                                                                                                                                                              if(!_loc2_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr061a:
                                                                                                                                                                                                                                 this.mouseEnabled = this.mouseChildren = false;
                                                                                                                                                                                                                                 if(_loc3_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    TweenMax.to(this.eventImage,0,{"colorMatrixFilter":{
                                                                                                                                                                                                                                       "colorize":12960173,
                                                                                                                                                                                                                                       "amount":1,
                                                                                                                                                                                                                                       "saturation":0,
                                                                                                                                                                                                                                       "brightness":2,
                                                                                                                                                                                                                                       "hue":30
                                                                                                                                                                                                                                    }});
                                                                                                                                                                                                                                    if(_loc3_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr065f:
                                                                                                                                                                                                                                       var _temp_52:* = this.timerGroup;
                                                                                                                                                                                                                                       this.timerGroup.visible = _loc1_ = false;
                                                                                                                                                                                                                                       _temp_52.includeInLayout = _loc1_;
                                                                                                                                                                                                                                       if(_loc2_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr0692:
                                                                                                                                                                                                                                          addr0696:
                                                                                                                                                                                                                                          if(!(_loc2_ && Boolean(this)))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(this.eventImage);
                                                                                                                                                                                                                                             if(_loc3_ || Boolean(this))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§pop().dynaSWFFileName = null;
                                                                                                                                                                                                                                                if(_loc3_ || _loc1_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr06d3:
                                                                                                                                                                                                                                                   §§push(this.eventImage);
                                                                                                                                                                                                                                                   if(_loc3_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push("gui_popup_citysquare_general");
                                                                                                                                                                                                                                                      if(!(_loc2_ && _loc2_))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§pop().dynaLibName = §§pop();
                                                                                                                                                                                                                                                         if(_loc3_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr06fb:
                                                                                                                                                                                                                                                            this.eventImage.dynaBmpSourceName = "no_event_polaroid";
                                                                                                                                                                                                                                                            addr06f7:
                                                                                                                                                                                                                                                            addr06f3:
                                                                                                                                                                                                                                                            if(!(_loc2_ && _loc3_))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr070a:
                                                                                                                                                                                                                                                               §§push(this.availabilityLabel);
                                                                                                                                                                                                                                                               if(!(_loc2_ && Boolean(this)))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr0727:
                                                                                                                                                                                                                                                                  §§pop().text = LocaUtils.getString("rcl.citysquare.questselection","rcl.citysquare.questselection.state.empty");
                                                                                                                                                                                                                                                                  addr071b:
                                                                                                                                                                                                                                                                  if(!_loc2_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr0734:
                                                                                                                                                                                                                                                                     this.availabilityLabel.maxDisplayedLines = 4;
                                                                                                                                                                                                                                                                     §§goto(addr0732);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr077a);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               addr0732:
                                                                                                                                                                                                                                                               §§goto(addr072e);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr077a);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr0744);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr06fb);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr06f7);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr06f3);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr06f7);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr072e);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr08b2);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr06d3);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr070a);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr0734);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr071b);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr08b2);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr0727);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr071b);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr08b2);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr05c8);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr061a);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   else
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr051e:
                                                                                                                                                                                                      §§push(this.eventIcon);
                                                                                                                                                                                                      if(!_loc2_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr0527:
                                                                                                                                                                                                         §§push("gui_popups_paperPopup");
                                                                                                                                                                                                         if(!_loc2_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr052f:
                                                                                                                                                                                                            §§pop().dynaLibName = §§pop();
                                                                                                                                                                                                            if(!(_loc2_ && _loc2_))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(this.eventIcon);
                                                                                                                                                                                                               if(_loc2_ && _loc3_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  break;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr0552:
                                                                                                                                                                                                               §§pop().dynaBmpSourceName = "architect_icon_blocked";
                                                                                                                                                                                                               addr054f:
                                                                                                                                                                                                               if(_loc3_ || _loc3_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(this.eventIcon);
                                                                                                                                                                                                                  if(_loc2_ && _loc3_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     break;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr0572:
                                                                                                                                                                                                                  §§push(this.eventIcon);
                                                                                                                                                                                                                  if(!(_loc2_ && _loc2_))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(true);
                                                                                                                                                                                                                     if(_loc3_ || _loc1_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        var _temp_59:* = §§pop();
                                                                                                                                                                                                                        §§push(_temp_59);
                                                                                                                                                                                                                        §§push(_temp_59);
                                                                                                                                                                                                                        if(_loc3_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr0597:
                                                                                                                                                                                                                           _loc1_ = §§pop();
                                                                                                                                                                                                                           if(_loc3_ || _loc1_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr05a5:
                                                                                                                                                                                                                              §§pop().visible = §§pop();
                                                                                                                                                                                                                              if(!(_loc2_ && _loc3_))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr05b4:
                                                                                                                                                                                                                                 §§push(_loc1_);
                                                                                                                                                                                                                                 if(_loc3_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc3_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§goto(addr05c1);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr068b:
                                                                                                                                                                                                                                       §§pop().includeInLayout = §§pop();
                                                                                                                                                                                                                                       if(!_loc2_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§goto(addr0692);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr070a);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr0689:
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr068b);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              else
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr0688:
                                                                                                                                                                                                                                 §§push(_loc1_);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr0689);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           else
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr0686:
                                                                                                                                                                                                                              §§pop().visible = §§pop();
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr0688);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        else
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr0685:
                                                                                                                                                                                                                           _loc1_ = §§pop();
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr0686);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     else
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr0684:
                                                                                                                                                                                                                        var _temp_62:* = §§pop();
                                                                                                                                                                                                                        §§push(_temp_62);
                                                                                                                                                                                                                        §§push(_temp_62);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr0685);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  else
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr0683:
                                                                                                                                                                                                                     §§push(false);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr0684);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr065f);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr05c8);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr0552);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr054f);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr0734);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr0732);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr061a);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr05e3);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr05d1);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr04c1);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr04bb);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr070a);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr02e4);
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     addr0342:
                                                                                                                                                                     this.timerBarIcon.dynaBmpSourceName = "timer_clock";
                                                                                                                                                                     addr033b:
                                                                                                                                                                     addr033f:
                                                                                                                                                                     if(_loc3_ || _loc2_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(this.eventHeaderLabel);
                                                                                                                                                                        if(_loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           addr035a:
                                                                                                                                                                           §§push(LocaUtils);
                                                                                                                                                                           §§push("rcl.citysquarequests.");
                                                                                                                                                                           if(_loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() + this._data.localePackId);
                                                                                                                                                                           }
                                                                                                                                                                           §§push("rcl.citysquarequests.");
                                                                                                                                                                           if(_loc3_ || _loc1_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() + this._data.localePackId);
                                                                                                                                                                              if(_loc3_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() + ".layer.name");
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§push(§§pop().getString(§§pop(),§§pop()));
                                                                                                                                                                           if(!_loc2_)
                                                                                                                                                                           {
                                                                                                                                                                              §§pop().text = §§pop();
                                                                                                                                                                              if(_loc3_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(this.eventIcon);
                                                                                                                                                                                 if(!_loc2_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push("gui_popups_paperPopup");
                                                                                                                                                                                    if(_loc3_ || _loc2_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr03b5:
                                                                                                                                                                                       §§pop().dynaLibName = §§pop();
                                                                                                                                                                                       if(!_loc2_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(this.eventIcon);
                                                                                                                                                                                          if(_loc3_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push("new_icon");
                                                                                                                                                                                             if(!_loc2_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr03cd:
                                                                                                                                                                                                §§pop().dynaBmpSourceName = §§pop();
                                                                                                                                                                                                if(!_loc2_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(this.eventIcon);
                                                                                                                                                                                                   if(!_loc2_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(this.eventIcon);
                                                                                                                                                                                                      if(!(_loc2_ && _loc2_))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(true);
                                                                                                                                                                                                         if(_loc3_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            var _temp_67:* = §§pop();
                                                                                                                                                                                                            §§push(_temp_67);
                                                                                                                                                                                                            §§push(_temp_67);
                                                                                                                                                                                                            if(!_loc2_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               _loc1_ = §§pop();
                                                                                                                                                                                                               if(!_loc2_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§pop().visible = §§pop();
                                                                                                                                                                                                                  if(_loc3_ || _loc2_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc1_);
                                                                                                                                                                                                                     if(_loc3_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc3_ || _loc2_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§pop().includeInLayout = §§pop();
                                                                                                                                                                                                                           if(!_loc2_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§goto(addr042b);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr04b7);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr05c1:
                                                                                                                                                                                                                        §§pop().includeInLayout = §§pop();
                                                                                                                                                                                                                        if(_loc3_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr05c8);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr072e:
                                                                                                                                                                                                                        if(!(_loc2_ && _loc3_))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr0744:
                                                                                                                                                                                                                           this.timerGroup.includeInLayout = this.timerGroup.visible = false;
                                                                                                                                                                                                                           if(!(_loc2_ && _loc3_))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§goto(addr0763);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr08b2);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr0763:
                                                                                                                                                                                                                        this.lockedGfx.includeInLayout = this.lockedGfx.visible = true;
                                                                                                                                                                                                                        if(_loc3_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr077a:
                                                                                                                                                                                                                           this.mouseEnabled = this.mouseChildren = false;
                                                                                                                                                                                                                           if(_loc3_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr08b2:
                                                                                                                                                                                                                           super.commitProperties();
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr08b7);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr0689);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr05b4);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr05a5);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr0597);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr0684);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr0683);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr0527);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr0692);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr052f);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr0572);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr08b2);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr03cd);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr054f);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              addr0517:
                                                                                                                                                                              §§pop().text = §§pop();
                                                                                                                                                                              if(_loc3_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr051e);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr08b2);
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           addr04fe:
                                                                                                                                                                           §§push(LocaUtils.getString("rcl.citysquare.questselection","rcl.citysquare.questselection.upcomming.header"));
                                                                                                                                                                           if(!(_loc2_ && _loc3_))
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr0517);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr06a2);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr061a);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr04bb);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr04a1);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr0612);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr0603);
                                                                                                                                                   }
                                                                                                                                                   addr08b7:
                                                                                                                                                   return;
                                                                                                                                                }
                                                                                                                                                §§goto(addr0462);
                                                                                                                                             }
                                                                                                                                             §§goto(addr0482);
                                                                                                                                          }
                                                                                                                                          §§goto(addr072e);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          addr0334:
                                                                                                                                          §§pop().dynaLibName = §§pop();
                                                                                                                                          if(!_loc2_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr033b);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr070a);
                                                                                                                                    }
                                                                                                                                    §§goto(addr033f);
                                                                                                                                 }
                                                                                                                                 §§goto(addr061a);
                                                                                                                              }
                                                                                                                              §§goto(addr0334);
                                                                                                                           }
                                                                                                                           §§goto(addr033f);
                                                                                                                        }
                                                                                                                        §§goto(addr0744);
                                                                                                                     }
                                                                                                                     §§goto(addr052f);
                                                                                                                  }
                                                                                                                  §§goto(addr0527);
                                                                                                               }
                                                                                                               §§goto(addr026e);
                                                                                                            }
                                                                                                            §§goto(addr03b5);
                                                                                                         }
                                                                                                         §§goto(addr0572);
                                                                                                      }
                                                                                                      §§goto(addr06f3);
                                                                                                   }
                                                                                                   §§goto(addr06a2);
                                                                                                }
                                                                                                §§goto(addr01a1);
                                                                                             }
                                                                                             §§goto(addr035a);
                                                                                          case 1:
                                                                                             §§push(this.timerBarIcon);
                                                                                             if(!_loc2_)
                                                                                             {
                                                                                                §§push("gui_popups_residentialPopup");
                                                                                                if(!_loc2_)
                                                                                                {
                                                                                                   §§goto(addr0334);
                                                                                                }
                                                                                                §§goto(addr0342);
                                                                                             }
                                                                                             §§goto(addr033f);
                                                                                          case 2:
                                                                                             §§push(this.eventHeaderLabel);
                                                                                             if(_loc3_ || Boolean(this))
                                                                                             {
                                                                                                §§goto(addr04fe);
                                                                                             }
                                                                                             §§goto(addr0696);
                                                                                          case 3:
                                                                                             §§push(this.eventIcon);
                                                                                             break;
                                                                                          default:
                                                                                             §§push(§§findproperty(RamaCityError));
                                                                                             §§push(this + "unknown state: ");
                                                                                             if(!_loc2_)
                                                                                             {
                                                                                                §§push(§§pop() + this._data.state);
                                                                                             }
                                                                                             throw new §§pop().RamaCityError(§§pop());
                                                                                       }
                                                                                       §§goto(addr0683);
                                                                                       §§push(this.eventIcon);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§push(EventSelectionVo.STATE_AVAILABLE);
                                                                                       if(!_loc2_)
                                                                                       {
                                                                                          addr080b:
                                                                                          §§push(_loc1_);
                                                                                          if(!(_loc2_ && Boolean(this)))
                                                                                          {
                                                                                             addr0819:
                                                                                             if(§§pop() === §§pop())
                                                                                             {
                                                                                                if(!(_loc2_ && _loc3_))
                                                                                                {
                                                                                                   addr082a:
                                                                                                   §§push(1);
                                                                                                   if(_loc2_)
                                                                                                   {
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr0857:
                                                                                                   §§push(2);
                                                                                                   if(_loc3_)
                                                                                                   {
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§push(EventSelectionVo.STATE_UPCOMING);
                                                                                                if(!_loc2_)
                                                                                                {
                                                                                                   §§push(_loc1_);
                                                                                                   if(!_loc2_)
                                                                                                   {
                                                                                                      addr0846:
                                                                                                      if(§§pop() === §§pop())
                                                                                                      {
                                                                                                         if(!(_loc2_ && _loc2_))
                                                                                                         {
                                                                                                            §§goto(addr0857);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr0878);
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr0874:
                                                                                                         addr0873:
                                                                                                         if(EventSelectionVo.EMPTY_SLOT === _loc1_)
                                                                                                         {
                                                                                                            §§goto(addr0878);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§push(4);
                                                                                                         }
                                                                                                         §§goto(addr0897);
                                                                                                      }
                                                                                                      §§goto(addr0878);
                                                                                                   }
                                                                                                   §§goto(addr0874);
                                                                                                }
                                                                                                §§goto(addr0873);
                                                                                             }
                                                                                             §§goto(addr0897);
                                                                                          }
                                                                                          §§goto(addr0846);
                                                                                       }
                                                                                       §§goto(addr0873);
                                                                                    }
                                                                                    §§goto(addr0878);
                                                                                 }
                                                                                 §§goto(addr0819);
                                                                              }
                                                                              §§goto(addr080b);
                                                                           }
                                                                           §§goto(addr082a);
                                                                        }
                                                                        §§goto(addr0140);
                                                                     }
                                                                     §§goto(addr014a);
                                                                  }
                                                                  §§goto(addr012d);
                                                               }
                                                               §§goto(addr0140);
                                                            }
                                                            §§goto(addr0120);
                                                         }
                                                         §§goto(addr0104);
                                                      }
                                                      §§goto(addr0100);
                                                   }
                                                   §§goto(addr0140);
                                                }
                                                §§goto(addr0120);
                                             }
                                             §§goto(addr07b6);
                                          }
                                          §§goto(addr014a);
                                       }
                                       §§goto(addr0096);
                                    }
                                    §§goto(addr00eb);
                                 }
                                 §§goto(addr0120);
                              }
                              §§goto(addr08b2);
                           }
                           §§goto(addr014a);
                        }
                     }
                     §§goto(addr0059);
                  }
               }
               §§goto(addr0058);
            }
            §§goto(addr009a);
         }
         §§goto(addr013c);
      }
      
      private function updateTimer() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            §§push(this._data);
            §§push(this._data.remainingTime);
            if(!(_loc2_ && _loc2_))
            {
               §§push(§§pop() - 1000);
            }
            §§pop().remainingTime = §§pop();
            if(!(_loc2_ && Boolean(this)))
            {
               this.setTimer();
               if(!(_loc2_ && _loc1_))
               {
                  addr0067:
                  TweenMax.delayedCall(1,this.updateTimer);
               }
            }
            return;
         }
         §§goto(addr0067);
      }
      
      private function setTimer() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc1_:* = 0;
         var _loc2_:* = NaN;
         if(!(_loc4_ && Boolean(_loc1_)))
         {
            if(this._data)
            {
               if(_loc3_)
               {
                  §§push(LocaUtils);
                  §§push(this._data.remainingTime);
                  if(!_loc4_)
                  {
                     §§push(§§pop() / 1000);
                  }
                  §§push(§§pop().getDaysFromSeconds(§§pop()));
                  if(_loc3_ || Boolean(_loc2_))
                  {
                     §§push(§§pop());
                     if(!_loc4_)
                     {
                        addr005f:
                        _loc1_ = §§pop();
                        if(!(_loc4_ && _loc3_))
                        {
                           §§push(_loc1_);
                           if(!_loc4_)
                           {
                              if(§§pop() >= 2)
                              {
                                 if(_loc3_ || Boolean(this))
                                 {
                                    §§push(LocaUtils);
                                    §§push(this._data.remainingTime);
                                    if(!_loc4_)
                                    {
                                       §§push(§§pop() / 1000);
                                    }
                                    §§push(§§pop().getExactDaysFromSecond(§§pop()));
                                    if(!(_loc4_ && Boolean(this)))
                                    {
                                       §§push(§§pop());
                                       if(_loc3_ || _loc3_)
                                       {
                                          _loc2_ = §§pop();
                                          if(!_loc4_)
                                          {
                                             addr00d0:
                                             addr00ce:
                                             if(_loc1_ - _loc2_ < 0)
                                             {
                                                if(_loc3_ || Boolean(_loc2_))
                                                {
                                                   §§push(this.progressBar);
                                                   if(!_loc4_)
                                                   {
                                                      §§push(LocaUtils);
                                                      §§push("rcl.misc.timeconventions");
                                                      §§push("rcl.misc.timeconventions.specificDays");
                                                      §§push(">");
                                                      if(_loc3_)
                                                      {
                                                         §§push(§§pop() + _loc1_);
                                                      }
                                                      §§push(§§pop().getString(§§pop(),§§pop(),null));
                                                      if(_loc3_)
                                                      {
                                                         §§pop().label = §§pop();
                                                         if(_loc3_)
                                                         {
                                                         }
                                                         addr0188:
                                                         this.progressBar.progress = this._data.currentProgress;
                                                         addr0184:
                                                      }
                                                      else
                                                      {
                                                         addr0173:
                                                         §§pop().label = §§pop();
                                                         if(!(_loc4_ && Boolean(_loc2_)))
                                                         {
                                                            §§goto(addr0184);
                                                         }
                                                      }
                                                      §§goto(addr0192);
                                                   }
                                                   else
                                                   {
                                                      addr015d:
                                                      §§push(LocaUtils);
                                                      §§push(this._data.remainingTime);
                                                      if(_loc3_)
                                                      {
                                                         §§push(§§pop() / 1000);
                                                      }
                                                      §§push(§§pop().getDuration(§§pop()));
                                                   }
                                                   §§goto(addr0173);
                                                }
                                                §§goto(addr0184);
                                             }
                                             else
                                             {
                                                §§push(this.progressBar);
                                                if(!_loc4_)
                                                {
                                                   §§push(LocaUtils.getString("rcl.misc.timeconventions","rcl.misc.timeconventions.specificDays",[_loc1_]));
                                                   if(!_loc4_)
                                                   {
                                                      §§pop().label = §§pop();
                                                      if(_loc3_)
                                                      {
                                                         §§goto(addr0184);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr0173);
                                                   }
                                                   §§goto(addr0192);
                                                }
                                             }
                                             §§goto(addr0188);
                                          }
                                          §§goto(addr0192);
                                       }
                                    }
                                    §§goto(addr00d0);
                                 }
                                 §§goto(addr0184);
                              }
                              else
                              {
                                 §§push(this.progressBar);
                                 if(!(_loc4_ && Boolean(_loc1_)))
                                 {
                                    §§goto(addr015d);
                                 }
                              }
                              §§goto(addr0188);
                           }
                           §§goto(addr00ce);
                        }
                        §§goto(addr0184);
                     }
                     §§goto(addr00ce);
                  }
                  §§goto(addr005f);
               }
               §§goto(addr0184);
            }
            addr0192:
            return;
         }
         §§goto(addr0184);
      }
      
      public function get eventQuestId() : Number
      {
         return this._data.configId;
      }
      
      private function get upcomingText() : String
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:* = "";
         if(!(_loc3_ && _loc3_))
         {
            §§push(LocaUtils);
            §§push(this._data.remainingTime);
            if(!_loc3_)
            {
               §§push(§§pop() / 1000);
            }
            if(§§pop().getDaysFromSeconds(§§pop()) > 1)
            {
               if(_loc2_ || _loc2_)
               {
                  §§push(LocaUtils);
                  §§push("rcl.citysquare.questselection");
                  §§push("rcl.citysquare.questselection.state.upcomming.days");
                  §§push(LocaUtils);
                  §§push(this._data.remainingTime);
                  if(_loc2_)
                  {
                     §§push(§§pop() / 1000);
                  }
                  §§push(§§pop().getString(§§pop(),§§pop(),[§§pop().getDaysFromSeconds(§§pop())]));
                  if(!_loc3_)
                  {
                     §§push(§§pop());
                     if(!_loc3_)
                     {
                        addr007a:
                        _loc1_ = §§pop();
                        if(_loc2_)
                        {
                        }
                        §§goto(addr013a);
                     }
                     else
                     {
                        addr0134:
                        _loc1_ = §§pop();
                        if(_loc2_)
                        {
                           §§goto(addr013a);
                        }
                     }
                     §§goto(addr015e);
                  }
                  §§goto(addr007a);
               }
               §§goto(addr013a);
            }
            else
            {
               §§push(LocaUtils);
               §§push(this._data.remainingTime);
               if(_loc2_ || _loc2_)
               {
                  §§push(§§pop() / 1000);
               }
               if(§§pop().getHoursFromSeconds(§§pop()) > 1)
               {
                  if(_loc2_)
                  {
                     §§push(LocaUtils);
                     §§push("rcl.citysquare.questselection");
                     §§push("rcl.citysquare.questselection.state.upcomming.hours");
                     §§push(LocaUtils);
                     §§push(this._data.remainingTime);
                     if(_loc2_ || _loc3_)
                     {
                        §§push(§§pop() / 1000);
                     }
                     §§push(§§pop().getString(§§pop(),§§pop(),[§§pop().getHoursFromSeconds(§§pop())]));
                     if(!(_loc3_ && _loc2_))
                     {
                        §§push(§§pop());
                        if(!(_loc3_ && _loc3_))
                        {
                           _loc1_ = §§pop();
                           if(!(_loc3_ && _loc2_))
                           {
                              addr013a:
                              §§goto(addr0182);
                           }
                        }
                        else
                        {
                           §§goto(addr0134);
                        }
                        §§goto(addr015e);
                     }
                     addr0182:
                     §§push(_loc1_);
                     if(!_loc3_)
                     {
                        addr0140:
                        if(§§pop() == "")
                        {
                           if(!(_loc3_ && Boolean(this)))
                           {
                              addr015e:
                              §§push(§§findproperty(RamaCityError));
                              §§push(this + "invalid time left? ms:");
                              if(_loc2_ || Boolean(_loc1_))
                              {
                                 §§push(§§pop() + this._data.remainingTime);
                              }
                              throw new §§pop().RamaCityError(§§pop());
                           }
                        }
                        return _loc1_;
                     }
                  }
                  §§goto(addr013a);
               }
               else
               {
                  §§push(LocaUtils.getString("rcl.citysquare.questselection","rcl.citysquare.questselection.state.upcomming.underonehourleft"));
                  if(!_loc3_)
                  {
                     §§push(§§pop());
                     if(_loc2_ || Boolean(this))
                     {
                        §§goto(addr0134);
                     }
                  }
               }
            }
            §§goto(addr0140);
         }
         §§goto(addr013a);
      }
      
      private function onClick(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            §§push(this._data);
            if(_loc2_ || _loc3_)
            {
               if(§§pop())
               {
                  if(_loc2_ || Boolean(param1))
                  {
                     §§push(this._data);
                     if(!(_loc3_ && Boolean(this)))
                     {
                        §§push(§§pop().state);
                        if(_loc2_)
                        {
                           §§push(EventSelectionVo.STATE_UPCOMING);
                           if(_loc2_ || Boolean(this))
                           {
                              §§push(§§pop() == §§pop());
                              if(_loc2_ || _loc2_)
                              {
                                 §§push(!§§pop());
                                 if(!(_loc3_ && Boolean(param1)))
                                 {
                                    var _temp_8:* = §§pop();
                                    §§push(_temp_8);
                                    if(_temp_8)
                                    {
                                       if(!(_loc3_ && _loc2_))
                                       {
                                          addr00b3:
                                          §§pop();
                                          if(!_loc3_)
                                          {
                                             §§goto(addr00cd);
                                          }
                                          §§goto(addr00d6);
                                       }
                                    }
                                 }
                                 addr00cd:
                                 §§goto(addr00c6);
                              }
                              §§goto(addr00b3);
                           }
                           addr00c6:
                           §§goto(addr00c0);
                        }
                        addr00c0:
                        §§goto(addr00bd);
                     }
                     addr00bd:
                     §§goto(addr00b9);
                  }
                  addr00b9:
                  §§push(this._data.state == EventSelectionVo.EMPTY_SLOT);
                  if(!_loc3_)
                  {
                     §§push(!§§pop());
                  }
                  if(§§pop())
                  {
                     if(!_loc3_)
                     {
                        addr00d6:
                        dispatchEvent(new Event(ITEM_CLICKED,true));
                     }
                  }
               }
               §§goto(addr00e4);
            }
            §§goto(addr00bd);
         }
         addr00e4:
      }
      
      private function onRemoved(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            TweenMax.killDelayedCallsTo(this.updateTimer);
         }
      }
      
      override public function get measuredWidth() : Number
      {
         return this.minWidth;
      }
      
      private function _CitySquareEventSelectionItemRenderer_VGroup1_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_)
         {
            _loc1_.percentHeight = 100;
            if(_loc2_ || Boolean(_loc1_))
            {
               addr0033:
               _loc1_.percentWidth = 100;
               if(_loc2_)
               {
                  _loc1_.verticalAlign = "top";
                  if(!_loc3_)
                  {
                     addr0052:
                     _loc1_.horizontalAlign = "center";
                     if(_loc2_)
                     {
                        _loc1_.mxmlContent = [this._CitySquareEventSelectionItemRenderer_Group1_c()];
                        if(_loc2_ || _loc3_)
                        {
                           addr0081:
                           if(!_loc1_.document)
                           {
                              if(_loc2_ || _loc2_)
                              {
                                 addr0095:
                                 _loc1_.document = this;
                              }
                           }
                        }
                        §§goto(addr0099);
                     }
                     §§goto(addr0081);
                  }
                  addr0099:
                  return _loc1_;
               }
               §§goto(addr0052);
            }
            §§goto(addr0095);
         }
         §§goto(addr0033);
      }
      
      private function _CitySquareEventSelectionItemRenderer_Group1_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!_loc3_)
         {
            _loc1_.percentHeight = 100;
            if(_loc2_ || _loc3_)
            {
               _loc1_.horizontalCenter = 0;
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.mxmlContent = [this._CitySquareEventSelectionItemRenderer_Group2_i(),this._CitySquareEventSelectionItemRenderer_Group3_i(),this._CitySquareEventSelectionItemRenderer_Group4_i()];
                  if(!(_loc3_ && _loc2_))
                  {
                     §§goto(addr007f);
                  }
               }
               §§goto(addr0093);
            }
         }
         addr007f:
         if(!_loc1_.document)
         {
            if(!(_loc3_ && Boolean(this)))
            {
               addr0093:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _CitySquareEventSelectionItemRenderer_Group2_i() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_)
         {
            _loc1_.width = 190;
            if(_loc2_ || Boolean(this))
            {
               addr0032:
               _loc1_.height = 30;
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.horizontalCenter = 0;
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     _loc1_.mxmlContent = [this._CitySquareEventSelectionItemRenderer_BlueBarComponent1_i(),this._CitySquareEventSelectionItemRenderer_VGroup2_c()];
                     if(_loc2_)
                     {
                        _loc1_.id = "headerGroup";
                        if(!_loc3_)
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc2_ || _loc2_)
                              {
                                 addr00a4:
                                 _loc1_.document = this;
                                 if(_loc2_ || _loc3_)
                                 {
                                    §§goto(addr00b5);
                                 }
                              }
                              §§goto(addr00bf);
                           }
                           addr00b5:
                           this.headerGroup = _loc1_;
                           if(!_loc3_)
                           {
                              addr00bf:
                              BindingManager.executeBindings(this,"headerGroup",this.headerGroup);
                           }
                           §§goto(addr00cc);
                        }
                        §§goto(addr00a4);
                     }
                     addr00cc:
                     return _loc1_;
                  }
                  §§goto(addr00bf);
               }
               §§goto(addr00b5);
            }
            §§goto(addr00bf);
         }
         §§goto(addr0032);
      }
      
      private function _CitySquareEventSelectionItemRenderer_BlueBarComponent1_i() : BlueBarComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BlueBarComponent = new BlueBarComponent();
         if(!_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(!_loc3_)
            {
               _loc1_.percentHeight = 100;
               if(_loc2_ || Boolean(this))
               {
                  addr004b:
                  _loc1_.id = "blueBar";
                  if(!_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
                        {
                           addr006f:
                           _loc1_.document = this;
                           if(_loc2_ || _loc3_)
                           {
                              §§goto(addr0080);
                           }
                        }
                        §§goto(addr008a);
                     }
                     §§goto(addr0080);
                  }
                  §§goto(addr006f);
               }
               addr0080:
               this.blueBar = _loc1_;
               if(_loc2_)
               {
                  addr008a:
                  BindingManager.executeBindings(this,"blueBar",this.blueBar);
               }
               return _loc1_;
            }
            §§goto(addr004b);
         }
         §§goto(addr008a);
      }
      
      private function _CitySquareEventSelectionItemRenderer_VGroup2_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.percentHeight = 100;
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.verticalAlign = "middle";
                  if(_loc2_)
                  {
                     addr0067:
                     _loc1_.horizontalAlign = "center";
                     if(_loc2_)
                     {
                        §§goto(addr0071);
                     }
                     §§goto(addr0081);
                  }
                  addr0071:
                  _loc1_.mxmlContent = [this._CitySquareEventSelectionItemRenderer_LocaLabel1_i()];
                  if(!_loc3_)
                  {
                     addr0081:
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
                        {
                           _loc1_.document = this;
                        }
                     }
                  }
                  §§goto(addr0091);
               }
               §§goto(addr0067);
            }
         }
         addr0091:
         return _loc1_;
      }
      
      private function _CitySquareEventSelectionItemRenderer_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_)
         {
            _loc1_.styleName = "emergencyComingSoonBarLabel";
            if(_loc3_)
            {
               _loc1_.maxDisplayedLines = 2;
               if(_loc3_)
               {
                  _loc1_.percentWidth = 90;
                  if(!_loc2_)
                  {
                     _loc1_.id = "eventHeaderLabel";
                     if(_loc3_)
                     {
                        addr0064:
                        if(!_loc1_.document)
                        {
                           if(!_loc2_)
                           {
                              addr0070:
                              _loc1_.document = this;
                              if(_loc3_)
                              {
                                 addr0079:
                                 this.eventHeaderLabel = _loc1_;
                                 if(_loc3_)
                                 {
                                    addr0083:
                                    BindingManager.executeBindings(this,"eventHeaderLabel",this.eventHeaderLabel);
                                 }
                              }
                              §§goto(addr0090);
                           }
                           §§goto(addr0083);
                        }
                        §§goto(addr0079);
                     }
                     addr0090:
                     return _loc1_;
                  }
                  §§goto(addr0083);
               }
               §§goto(addr0070);
            }
            §§goto(addr0064);
         }
         §§goto(addr0070);
      }
      
      private function _CitySquareEventSelectionItemRenderer_Group3_i() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || _loc2_)
         {
            _loc1_.height = 84;
            if(_loc3_)
            {
               _loc1_.width = 185;
               if(!_loc2_)
               {
                  _loc1_.top = 244;
                  if(!_loc2_)
                  {
                     addr0048:
                     _loc1_.horizontalCenter = 0;
                     if(_loc3_)
                     {
                        _loc1_.mxmlContent = [this._CitySquareEventSelectionItemRenderer_StickyNoteComponent1_c()];
                        if(!_loc2_)
                        {
                           addr006e:
                           _loc1_.id = "bottomPostitGroup";
                           if(_loc3_ || _loc2_)
                           {
                              §§goto(addr0081);
                           }
                           §§goto(addr00a3);
                        }
                        addr0081:
                        if(!_loc1_.document)
                        {
                           if(!(_loc2_ && _loc2_))
                           {
                              addr00a3:
                              _loc1_.document = this;
                              if(!_loc2_)
                              {
                                 §§goto(addr00ac);
                              }
                              §§goto(addr00be);
                           }
                        }
                        §§goto(addr00ac);
                     }
                     §§goto(addr006e);
                  }
                  §§goto(addr00ac);
               }
               §§goto(addr0048);
            }
            §§goto(addr0081);
         }
         addr00ac:
         this.bottomPostitGroup = _loc1_;
         if(!(_loc2_ && Boolean(this)))
         {
            addr00be:
            BindingManager.executeBindings(this,"bottomPostitGroup",this.bottomPostitGroup);
         }
         return _loc1_;
      }
      
      private function _CitySquareEventSelectionItemRenderer_StickyNoteComponent1_c() : StickyNoteComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.percentHeight = 100;
            if(!_loc2_)
            {
               _loc1_.percentWidth = 100;
               if(!(_loc2_ && Boolean(this)))
               {
                  addr005c:
                  _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._CitySquareEventSelectionItemRenderer_Array8_c);
                  if(_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           addr007d:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr0081);
                  }
               }
               §§goto(addr007d);
            }
            addr0081:
            return _loc1_;
         }
         §§goto(addr005c);
      }
      
      private function _CitySquareEventSelectionItemRenderer_Array8_c() : Array
      {
         return [this._CitySquareEventSelectionItemRenderer_VGroup3_c()];
      }
      
      private function _CitySquareEventSelectionItemRenderer_VGroup3_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!_loc3_)
         {
            _loc1_.horizontalAlign = "center";
            if(_loc2_ || _loc3_)
            {
               _loc1_.verticalAlign = "middle";
               if(_loc2_)
               {
                  _loc1_.horizontalCenter = 0;
                  if(_loc2_)
                  {
                     _loc1_.percentWidth = 100;
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        §§goto(addr0062);
                     }
                     §§goto(addr00d0);
                  }
                  §§goto(addr00bc);
               }
               §§goto(addr0062);
            }
            §§goto(addr0074);
         }
         addr0062:
         _loc1_.gap = 3;
         if(_loc2_ || _loc2_)
         {
            addr0074:
            _loc1_.height = 44;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.top = -6;
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.mxmlContent = [this._CitySquareEventSelectionItemRenderer_LocaLabel2_i(),this._CitySquareEventSelectionItemRenderer_HGroup1_i()];
                  if(!_loc3_)
                  {
                     addr00bc:
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || _loc2_)
                        {
                           addr00d0:
                           _loc1_.document = this;
                        }
                     }
                  }
               }
               §§goto(addr00d4);
            }
            §§goto(addr00d0);
         }
         addr00d4:
         return _loc1_;
      }
      
      private function _CitySquareEventSelectionItemRenderer_LocaLabel2_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.percentWidth = 96;
            if(!_loc2_)
            {
               _loc1_.styleName = "flavorText";
               if(!(_loc2_ && Boolean(this)))
               {
                  _loc1_.maxDisplayedLines = 1;
                  if(!_loc2_)
                  {
                     _loc1_.id = "availabilityLabel";
                     if(!_loc2_)
                     {
                        addr0067:
                        if(!_loc1_.document)
                        {
                           if(_loc3_ || Boolean(this))
                           {
                              _loc1_.document = this;
                              if(!_loc2_)
                              {
                                 §§goto(addr008f);
                              }
                              §§goto(addr00a1);
                           }
                        }
                        addr008f:
                        this.availabilityLabel = _loc1_;
                        if(!(_loc2_ && Boolean(this)))
                        {
                           addr00a1:
                           BindingManager.executeBindings(this,"availabilityLabel",this.availabilityLabel);
                        }
                        §§goto(addr00ae);
                     }
                  }
                  §§goto(addr00a1);
               }
               §§goto(addr00ae);
            }
            §§goto(addr0067);
         }
         addr00ae:
         return _loc1_;
      }
      
      private function _CitySquareEventSelectionItemRenderer_HGroup1_i() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_)
         {
            _loc1_.width = 130;
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.maxWidth = 130;
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.gap = 4;
                  if(!_loc3_)
                  {
                     addr0050:
                     _loc1_.horizontalAlign = "center";
                     if(!(_loc3_ && _loc3_))
                     {
                        addr006f:
                        _loc1_.mxmlContent = [this._CitySquareEventSelectionItemRenderer_BriskImageDynaLib1_i(),this._CitySquareEventSelectionItemRenderer_ProgressBarComponent1_i()];
                        if(_loc2_ || Boolean(this))
                        {
                           _loc1_.id = "timerGroup";
                           if(!_loc3_)
                           {
                              if(!_loc1_.document)
                              {
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    addr00ac:
                                    _loc1_.document = this;
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       §§goto(addr00c9);
                                    }
                                    §§goto(addr00db);
                                 }
                              }
                              addr00c9:
                              this.timerGroup = _loc1_;
                              if(_loc2_ || _loc2_)
                              {
                                 addr00db:
                                 BindingManager.executeBindings(this,"timerGroup",this.timerGroup);
                              }
                              §§goto(addr00e8);
                           }
                        }
                        §§goto(addr00e8);
                     }
                     §§goto(addr00c9);
                  }
                  addr00e8:
                  return _loc1_;
               }
               §§goto(addr006f);
            }
            §§goto(addr00ac);
         }
         §§goto(addr0050);
      }
      
      private function _CitySquareEventSelectionItemRenderer_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.dynaLibName = "gui_popups_residentialPopup";
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.dynaBmpSourceName = "timer_clock";
               if(_loc3_)
               {
                  addr0055:
                  _loc1_.id = "timerBarIcon";
                  if(!_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc2_)
                        {
                           addr007a:
                           _loc1_.document = this;
                           if(_loc3_ || Boolean(this))
                           {
                              §§goto(addr008b);
                           }
                           §§goto(addr0095);
                        }
                     }
                     addr008b:
                     this.timerBarIcon = _loc1_;
                     if(!_loc2_)
                     {
                        addr0095:
                        BindingManager.executeBindings(this,"timerBarIcon",this.timerBarIcon);
                     }
                     return _loc1_;
                  }
               }
               §§goto(addr0095);
            }
            §§goto(addr007a);
         }
         §§goto(addr0055);
      }
      
      private function _CitySquareEventSelectionItemRenderer_ProgressBarComponent1_i() : ProgressBarComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:ProgressBarComponent = new ProgressBarComponent();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.width = 100;
            if(_loc3_ || _loc3_)
            {
               addr0047:
               _loc1_.id = "progressBar";
               if(!(_loc2_ && _loc3_))
               {
                  if(!_loc1_.document)
                  {
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        _loc1_.document = this;
                        if(!_loc2_)
                        {
                           §§goto(addr0082);
                        }
                        §§goto(addr0094);
                     }
                  }
               }
            }
            addr0082:
            this.progressBar = _loc1_;
            if(_loc3_ || _loc2_)
            {
               addr0094:
               BindingManager.executeBindings(this,"progressBar",this.progressBar);
            }
            return _loc1_;
         }
         §§goto(addr0047);
      }
      
      private function _CitySquareEventSelectionItemRenderer_Group4_i() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.percentHeight = 100;
            if(_loc2_)
            {
               _loc1_.percentWidth = 100;
               if(!_loc3_)
               {
                  _loc1_.horizontalCenter = 0;
                  if(!(_loc3_ && _loc2_))
                  {
                     _loc1_.top = 34;
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        _loc1_.mxmlContent = [this._CitySquareEventSelectionItemRenderer_BriskImageDynaLib2_i(),this._CitySquareEventSelectionItemRenderer_BriskImageDynaLib3_i(),this._CitySquareEventSelectionItemRenderer_BriskImageDynaLib4_i(),this._CitySquareEventSelectionItemRenderer_BriskImageDynaLib5_i()];
                        if(_loc2_)
                        {
                           addr008f:
                           _loc1_.id = "mainPartGroup";
                           if(!_loc3_)
                           {
                              if(!_loc1_.document)
                              {
                                 if(_loc2_)
                                 {
                                    _loc1_.document = this;
                                    if(_loc2_)
                                    {
                                       addr00ba:
                                       this.mainPartGroup = _loc1_;
                                       if(_loc2_ || _loc2_)
                                       {
                                          addr00cc:
                                          BindingManager.executeBindings(this,"mainPartGroup",this.mainPartGroup);
                                       }
                                    }
                                    return _loc1_;
                                 }
                              }
                              §§goto(addr00ba);
                           }
                        }
                        §§goto(addr00cc);
                     }
                     §§goto(addr008f);
                  }
                  §§goto(addr00cc);
               }
            }
         }
         §§goto(addr008f);
      }
      
      private function _CitySquareEventSelectionItemRenderer_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaBmpSourceName = "quest_polaroidframe";
            if(_loc3_ || Boolean(this))
            {
               _loc1_.dynaLibName = "gui_popups_questPopup";
               if(!(_loc2_ && _loc2_))
               {
                  §§goto(addr0055);
               }
               §§goto(addr0072);
            }
            §§goto(addr009c);
         }
         addr0055:
         _loc1_.horizontalCenter = 0;
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.id = "polaroidframe";
            if(_loc3_)
            {
               addr0072:
               if(!_loc1_.document)
               {
                  if(_loc3_ || _loc2_)
                  {
                     §§goto(addr0093);
                  }
               }
               §§goto(addr009c);
            }
            addr0093:
            _loc1_.document = this;
            if(_loc3_)
            {
               addr009c:
               this.polaroidframe = _loc1_;
               if(_loc3_ || Boolean(_loc1_))
               {
                  BindingManager.executeBindings(this,"polaroidframe",this.polaroidframe);
               }
            }
            §§goto(addr00bb);
         }
         addr00bb:
         return _loc1_;
      }
      
      private function _CitySquareEventSelectionItemRenderer_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.height = 211;
            if(!_loc3_)
            {
               _loc1_.width = 169;
               if(_loc2_)
               {
                  _loc1_.top = 9;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     _loc1_.horizontalCenter = -1;
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        addr0065:
                        _loc1_.id = "eventImage";
                        if(!(_loc3_ && Boolean(_loc1_)))
                        {
                           if(!_loc1_.document)
                           {
                              if(!_loc3_)
                              {
                                 addr008f:
                                 _loc1_.document = this;
                                 if(_loc2_ || Boolean(this))
                                 {
                                    §§goto(addr00a0);
                                 }
                              }
                              §§goto(addr00aa);
                           }
                           §§goto(addr00a0);
                        }
                        §§goto(addr008f);
                     }
                     addr00a0:
                     this.eventImage = _loc1_;
                     if(!_loc3_)
                     {
                        addr00aa:
                        BindingManager.executeBindings(this,"eventImage",this.eventImage);
                     }
                     §§goto(addr00b7);
                  }
               }
               §§goto(addr008f);
            }
            §§goto(addr0065);
         }
         addr00b7:
         return _loc1_;
      }
      
      private function _CitySquareEventSelectionItemRenderer_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.top = 90;
            if(_loc2_ || Boolean(this))
            {
               _loc1_.includeInLayout = false;
               if(_loc2_ || Boolean(this))
               {
                  §§goto(addr0041);
               }
               §§goto(addr00b1);
            }
            addr0041:
            _loc1_.visible = false;
            if(!_loc3_)
            {
               _loc1_.dynaLibName = "gui_popup_citysquare_general";
               if(_loc2_)
               {
                  §§goto(addr005f);
               }
               §§goto(addr00b1);
            }
            addr005f:
            _loc1_.dynaBmpSourceName = "locked_gfx";
            if(_loc2_ || _loc3_)
            {
               _loc1_.id = "lockedGfx";
               if(_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        addr0096:
                        _loc1_.document = this;
                        if(_loc2_ || Boolean(this))
                        {
                           §§goto(addr00a7);
                        }
                     }
                     §§goto(addr00b1);
                  }
                  addr00a7:
                  this.lockedGfx = _loc1_;
                  if(_loc2_)
                  {
                     addr00b1:
                     BindingManager.executeBindings(this,"lockedGfx",this.lockedGfx);
                  }
                  §§goto(addr00be);
               }
            }
            addr00be:
            return _loc1_;
         }
         §§goto(addr0096);
      }
      
      private function _CitySquareEventSelectionItemRenderer_BriskImageDynaLib5_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.left = -5;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.top = -4;
               if(!(_loc2_ && Boolean(this)))
               {
                  _loc1_.id = "eventIcon";
                  if(!_loc2_)
                  {
                     §§goto(addr0063);
                  }
                  §§goto(addr0077);
               }
               addr0063:
               if(!_loc1_.document)
               {
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     addr0077:
                     _loc1_.document = this;
                     if(!(_loc2_ && _loc2_))
                     {
                        §§goto(addr0094);
                     }
                     §§goto(addr00a6);
                  }
               }
               addr0094:
               this.eventIcon = _loc1_;
               if(!(_loc2_ && _loc2_))
               {
                  addr00a6:
                  BindingManager.executeBindings(this,"eventIcon",this.eventIcon);
               }
               return _loc1_;
            }
         }
         §§goto(addr00a6);
      }
      
      public function ___CitySquareEventSelectionItemRenderer_ItemRenderer1_removedFromStage(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            this.onRemoved(param1);
         }
      }
      
      public function ___CitySquareEventSelectionItemRenderer_ItemRenderer1_click(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            this.onClick(param1);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get availabilityLabel() : LocaLabel
      {
         return this._396715431availabilityLabel;
      }
      
      public function set availabilityLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._396715431availabilityLabel;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || _loc3_)
               {
                  this._396715431availabilityLabel = param1;
                  addr0041:
                  if(!(_loc3_ && _loc3_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr006e:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"availabilityLabel",_loc2_,param1));
                        }
                     }
                     §§goto(addr007d);
                  }
               }
               §§goto(addr006e);
            }
            addr007d:
            return;
         }
         §§goto(addr0041);
      }
      
      [Bindable(event="propertyChange")]
      public function get blueBar() : BlueBarComponent
      {
         return this._15876775blueBar;
      }
      
      public function set blueBar(param1:BlueBarComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._15876775blueBar;
         if(_loc3_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._15876775blueBar = param1;
                  if(_loc3_)
                  {
                     addr0056:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(param1)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"blueBar",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007d);
               }
               §§goto(addr0056);
            }
         }
         addr007d:
      }
      
      [Bindable(event="propertyChange")]
      public function get bottomPostitGroup() : Group
      {
         return this._221873225bottomPostitGroup;
      }
      
      public function set bottomPostitGroup(param1:Group) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._221873225bottomPostitGroup;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(_loc2_))
               {
                  this._221873225bottomPostitGroup = param1;
                  if(!(_loc4_ && _loc3_))
                  {
                     §§goto(addr005c);
                  }
                  §§goto(addr006b);
               }
               addr005c:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc3_)
                  {
                     addr006b:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bottomPostitGroup",_loc2_,param1));
                  }
               }
               §§goto(addr007a);
            }
         }
         addr007a:
      }
      
      [Bindable(event="propertyChange")]
      public function get eventHeaderLabel() : LocaLabel
      {
         return this._669363565eventHeaderLabel;
      }
      
      public function set eventHeaderLabel(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._669363565eventHeaderLabel;
         if(!(_loc4_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(_loc2_))
               {
                  addr004a:
                  this._669363565eventHeaderLabel = param1;
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(param1))
                        {
                           addr007f:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"eventHeaderLabel",_loc2_,param1));
                        }
                     }
                     §§goto(addr008e);
                  }
                  §§goto(addr007f);
               }
            }
            addr008e:
            return;
         }
         §§goto(addr004a);
      }
      
      [Bindable(event="propertyChange")]
      public function get eventIcon() : BriskImageDynaLib
      {
         return this._31082035eventIcon;
      }
      
      public function set eventIcon(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._31082035eventIcon;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._31082035eventIcon = param1;
                  if(_loc4_)
                  {
                     addr0051:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(param1))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"eventIcon",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0078);
               }
               §§goto(addr0051);
            }
            addr0078:
            return;
         }
         §§goto(addr0051);
      }
      
      [Bindable(event="propertyChange")]
      public function get eventImage() : BriskImageDynaLib
      {
         return this._963827425eventImage;
      }
      
      public function set eventImage(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._963827425eventImage;
         if(_loc3_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._963827425eventImage = param1;
                  if(!(_loc4_ && Boolean(this)))
                  {
                     addr005d:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"eventImage",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007c);
               }
               §§goto(addr005d);
            }
            addr007c:
            return;
         }
         §§goto(addr005d);
      }
      
      [Bindable(event="propertyChange")]
      public function get headerGroup() : Group
      {
         return this._1161933810headerGroup;
      }
      
      public function set headerGroup(param1:Group) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1161933810headerGroup;
         if(_loc3_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1161933810headerGroup = param1;
                  addr003e:
                  if(!(_loc4_ && Boolean(this)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"headerGroup",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr003e);
      }
      
      [Bindable(event="propertyChange")]
      public function get lockedGfx() : BriskImageDynaLib
      {
         return this._924938225lockedGfx;
      }
      
      public function set lockedGfx(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._924938225lockedGfx;
         if(_loc3_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(_loc2_))
               {
                  this._924938225lockedGfx = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr006d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lockedGfx",_loc2_,param1));
                        }
                     }
                     §§goto(addr007c);
                  }
               }
               §§goto(addr006d);
            }
            addr007c:
            return;
         }
         §§goto(addr006d);
      }
      
      [Bindable(event="propertyChange")]
      public function get mainPartGroup() : Group
      {
         return this._1950311277mainPartGroup;
      }
      
      public function set mainPartGroup(param1:Group) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1950311277mainPartGroup;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(this)))
               {
                  this._1950311277mainPartGroup = param1;
                  addr0040:
                  if(_loc3_)
                  {
                     §§goto(addr0056);
                  }
                  §§goto(addr006e);
               }
               addr0056:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc4_ && Boolean(this)))
                  {
                     addr006e:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mainPartGroup",_loc2_,param1));
                  }
               }
               §§goto(addr007d);
            }
            addr007d:
            return;
         }
         §§goto(addr0040);
      }
      
      [Bindable(event="propertyChange")]
      public function get polaroidframe() : BriskImageDynaLib
      {
         return this._2085991647polaroidframe;
      }
      
      public function set polaroidframe(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._2085991647polaroidframe;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._2085991647polaroidframe = param1;
                  if(_loc4_ || _loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(this)))
                        {
                           addr0071:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"polaroidframe",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0071);
      }
      
      [Bindable(event="propertyChange")]
      public function get progressBar() : ProgressBarComponent
      {
         return this._1131509414progressBar;
      }
      
      public function set progressBar(param1:ProgressBarComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1131509414progressBar;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1131509414progressBar = param1;
                  if(_loc3_ || Boolean(_loc2_))
                  {
                     §§goto(addr0055);
                  }
                  §§goto(addr006d);
               }
               addr0055:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     addr006d:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"progressBar",_loc2_,param1));
                  }
               }
               §§goto(addr007c);
            }
         }
         addr007c:
      }
      
      [Bindable(event="propertyChange")]
      public function get timerBarIcon() : BriskImageDynaLib
      {
         return this._1574849497timerBarIcon;
      }
      
      public function set timerBarIcon(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1574849497timerBarIcon;
         if(_loc4_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1574849497timerBarIcon = param1;
                  if(_loc4_ || _loc3_)
                  {
                     addr0061:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(_loc2_)))
                        {
                           addr0078:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"timerBarIcon",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0087);
               }
               §§goto(addr0078);
            }
            addr0087:
            return;
         }
         §§goto(addr0061);
      }
      
      [Bindable(event="propertyChange")]
      public function get timerGroup() : HGroup
      {
         return this._1639236154timerGroup;
      }
      
      public function set timerGroup(param1:HGroup) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1639236154timerGroup;
         if(!(_loc3_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(param1)))
               {
                  this._1639236154timerGroup = param1;
                  if(!_loc3_)
                  {
                     §§goto(addr005d);
                  }
                  §§goto(addr0074);
               }
               addr005d:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     addr0074:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"timerGroup",_loc2_,param1));
                  }
               }
               §§goto(addr0083);
            }
            addr0083:
            return;
         }
         §§goto(addr005d);
      }
   }
}

