package net.bigpoint.cityrama.controller.applicationModes.normal
{
   import com.greensock.TweenMax;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.MiniLayerConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.constants.quest.ClickTaskNotificationConstants;
   import net.bigpoint.cityrama.model.FeatureProxy;
   import net.bigpoint.cityrama.model.baseView.BasementViewProxy;
   import net.bigpoint.cityrama.model.departmentBook.DepartmentTabProxy;
   import net.bigpoint.cityrama.model.detailViews.MainLayerProxy;
   import net.bigpoint.cityrama.model.events.EventProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldExpansionsProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldInteractiveProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.field.interfaces.IGameObjectVo;
   import net.bigpoint.cityrama.model.game.KeyboardInputActionProxy;
   import net.bigpoint.cityrama.model.optionsMenu.OptionsGlobalVariables;
   import net.bigpoint.cityrama.model.player.PlayerResourceProxy;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.model.quest.VirtualTaskNotificationInterest;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigOutputDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPhaseDTO;
   import net.bigpoint.cityrama.model.server.vo.server.MasteryBonusDTO;
   import net.bigpoint.cityrama.model.server.vo.server.PhaseDTO;
   import net.bigpoint.cityrama.model.sound.SoundProxy;
   import net.bigpoint.cityrama.view.departmentBook.EmergencyDepartmentBookMediator;
   import net.bigpoint.cityrama.view.departmentBook.ui.components.EmergencyDepartmentBook;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.AcademyFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.BoulderFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.CinemaFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.CitySquareFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.DecorationFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ExpansionFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.InfrastructureBuildingFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.MysteryBuildingFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ProductionFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ResidentialFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ScheduledDropFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ShopFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.SpecialFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.TownHallFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.PlayfieldSwitchFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IBuildUpManagerImplementation;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IEventDrop;
   import net.bigpoint.cityrama.view.productionBook.ProductionPopupMediator;
   import net.bigpoint.cityrama.view.productionBook.ui.components.ProductionPopup;
   import net.bigpoint.cityrama.view.schoolBook.SchoolBookMediator;
   import net.bigpoint.cityrama.view.schoolBook.ui.components.SchoolBook;
   import net.bigpoint.cityrama.view.shopBook.ShopBookMediator;
   import net.bigpoint.cityrama.view.shopBook.ui.components.ShopPopup;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class PlayfieldInteractiveClickForNormalCommand extends SimpleCommand
   {
      
      public function PlayfieldInteractiveClickForNormalCommand()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         §§push(false);
         var _loc26_:Boolean = true;
         var _loc27_:* = §§pop();
         var _loc10_:BillboardObject = null;
         var _loc11_:PlayfieldObjectsProxy = null;
         var _loc12_:ExpansionFieldObject = null;
         var _loc13_:IGameObjectVo = null;
         var _loc14_:SpecialFieldObject = null;
         var _loc15_:Object = null;
         var _loc16_:ExpansionFieldObject = null;
         var _loc17_:BillboardObject = null;
         var _loc18_:MasteryBonusDTO = null;
         var _loc19_:PhaseDTO = null;
         var _loc20_:ConfigOutputDTO = null;
         var _loc21_:MasteryBonusDTO = null;
         var _loc2_:EventProxy = super.facade.retrieveProxy(EventProxy.NAME) as EventProxy;
         var _loc3_:PlayfieldInteractiveProxy = PlayfieldInteractiveProxy(facade.retrieveProxy(PlayfieldInteractiveProxy.NAME));
         var _loc4_:SoundProxy = facade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
         var _loc5_:PlayfieldExpansionsProxy = facade.retrieveProxy(PlayfieldExpansionsProxy.NAME) as PlayfieldExpansionsProxy;
         var _loc6_:BasementViewProxy = facade.retrieveProxy(BasementViewProxy.NAME) as BasementViewProxy;
         var _loc7_:KeyboardInputActionProxy = super.facade.retrieveProxy(KeyboardInputActionProxy.NAME) as KeyboardInputActionProxy;
         var _loc8_:PlayerResourceProxy = facade.retrieveProxy(PlayerResourceProxy.NAME) as PlayerResourceProxy;
         var _loc9_:FeatureProxy = facade.retrieveProxy(FeatureProxy.NAME) as FeatureProxy;
         if(!_loc27_)
         {
            §§push(_loc3_.clickObject);
            if(_loc26_)
            {
               if(§§pop() != null)
               {
                  if(!(_loc27_ && Boolean(_loc2_)))
                  {
                     §§goto(addr0117);
                  }
                  §§goto(addr01cb);
               }
               §§goto(addr11a9);
            }
            §§goto(addr018c);
         }
         addr0117:
         facade.sendNotification(ApplicationNotificationConstants.FIELD_INFOLAYER_HIDE);
         if(!_loc27_)
         {
            §§push(_loc3_.clickObject);
            if(!(_loc27_ && Boolean(this)))
            {
               §§push(§§pop() is PlayfieldSwitchFieldObject);
               if(!(_loc27_ && Boolean(this)))
               {
                  if(§§pop())
                  {
                     if(_loc26_ || Boolean(_loc3_))
                     {
                        sendNotification(ApplicationNotificationConstants.PLAYFIELD_SWITCH_FIELD_OBJECT_CLICKED,_loc3_.clickObject);
                        if(!(_loc27_ && Boolean(param1)))
                        {
                           addr017a:
                           §§push(_loc3_.clickObject);
                           if(!(_loc27_ && Boolean(this)))
                           {
                              addr018c:
                              §§push(§§pop() is BillboardObject);
                              if(_loc26_ || Boolean(_loc3_))
                              {
                                 §§goto(addr019d);
                              }
                              §§goto(addr01b3);
                           }
                           §§goto(addr01ab);
                        }
                        §§goto(addr01a7);
                     }
                     §§goto(addr01cb);
                  }
                  §§goto(addr017a);
               }
               addr019d:
               if(§§pop())
               {
                  if(_loc26_)
                  {
                     addr01b3:
                     addr01ab:
                     addr01a7:
                     if((_loc3_.clickObject as BillboardObject).billboardObjectVo.isExpansionObject)
                     {
                        if(_loc26_)
                        {
                           §§goto(addr01bd);
                        }
                        §§goto(addr01cb);
                     }
                     else
                     {
                        §§push(_loc3_.clickObject);
                        if(_loc26_)
                        {
                           §§push(§§pop() is SpecialFieldObject);
                           if(_loc26_)
                           {
                              if(§§pop())
                              {
                                 if(_loc26_ || Boolean(_loc3_))
                                 {
                                    §§push(_loc3_.clickObject);
                                    if(_loc26_ || Boolean(_loc2_))
                                    {
                                       _loc14_ = §§pop() as SpecialFieldObject;
                                       §§push(_loc14_ is CitySquareFieldObject);
                                       if(_loc26_)
                                       {
                                          var _temp_13:* = §§pop();
                                          §§push(_temp_13);
                                          §§push(_temp_13);
                                          if(_loc26_ || Boolean(_loc3_))
                                          {
                                             if(§§pop())
                                             {
                                                if(_loc26_)
                                                {
                                                   §§pop();
                                                   if(_loc26_ || Boolean(param1))
                                                   {
                                                      §§push(_loc7_.shiftIsPressed);
                                                      if(_loc26_)
                                                      {
                                                         §§push(!§§pop());
                                                         if(_loc26_)
                                                         {
                                                            addr030e:
                                                            if(§§pop())
                                                            {
                                                               if(!_loc27_)
                                                               {
                                                                  sendNotification(ApplicationNotificationConstants.CITYSQUARE_CLICKED);
                                                                  if(!_loc27_)
                                                                  {
                                                                     addr0328:
                                                                     §§push(_loc14_ is TownHallFieldObject);
                                                                     if(!_loc27_)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           if(_loc26_)
                                                                           {
                                                                              if(facade.hasCommand(ClickTaskNotificationConstants.TOWNHALL_CLICKED))
                                                                              {
                                                                                 if(!_loc27_)
                                                                                 {
                                                                                    addr0354:
                                                                                    (_loc14_ as TownHallFieldObject).townHallFieldObjectVo.userInteractionLocked = true;
                                                                                    if(!_loc27_)
                                                                                    {
                                                                                       sendNotification(ClickTaskNotificationConstants.TOWNHALL_CLICKED);
                                                                                       if(_loc26_ || Boolean(_loc2_))
                                                                                       {
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr05a4:
                                                                                       §§push((_loc14_ as ScheduledDropFieldObject).scheduledDropFieldObjectVo);
                                                                                       if(_loc26_)
                                                                                       {
                                                                                          §§push(§§pop().isAnimationPlaying);
                                                                                          if(_loc26_ || Boolean(_loc3_))
                                                                                          {
                                                                                             addr05c4:
                                                                                             §§push(!§§pop());
                                                                                             if(!(_loc27_ && Boolean(param1)))
                                                                                             {
                                                                                                addr05d3:
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   if(!(_loc27_ && Boolean(_loc2_)))
                                                                                                   {
                                                                                                      addr05f1:
                                                                                                      addr05ee:
                                                                                                      addr05e5:
                                                                                                      if((_loc14_ as ScheduledDropFieldObject).scheduledDropFieldObjectVo.isConnectedToStreet)
                                                                                                      {
                                                                                                         if(_loc26_)
                                                                                                         {
                                                                                                            addr0600:
                                                                                                            _loc14_.specialFieldObjectVo.userInteractionLocked = true;
                                                                                                            addr05fb:
                                                                                                            if(!_loc27_)
                                                                                                            {
                                                                                                               addr060a:
                                                                                                               sendNotification(ApplicationNotificationConstants.SHOW_SCHEDULED_DROP_ANIMATION,{"buildingId":_loc14_.specialFieldObjectVo.buildingDTO.id});
                                                                                                               if(_loc26_ || Boolean(this))
                                                                                                               {
                                                                                                                  TweenMax.delayedCall(2,this.evaluateDrops,[_loc14_ as BillboardObject]);
                                                                                                               }
                                                                                                            }
                                                                                                            addr0646:
                                                                                                            §§push(_loc3_.clickObject);
                                                                                                            if(!(_loc27_ && Boolean(_loc2_)))
                                                                                                            {
                                                                                                               §§push(§§pop() is ExpansionFieldObject);
                                                                                                               if(!(_loc27_ && Boolean(param1)))
                                                                                                               {
                                                                                                                  var _temp_23:* = §§pop();
                                                                                                                  §§push(_temp_23);
                                                                                                                  §§push(_temp_23);
                                                                                                                  if(!_loc27_)
                                                                                                                  {
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        if(!(_loc27_ && Boolean(this)))
                                                                                                                        {
                                                                                                                           §§pop();
                                                                                                                           if(!_loc27_)
                                                                                                                           {
                                                                                                                              §§push(_loc7_.shiftIsPressed);
                                                                                                                              if(_loc26_)
                                                                                                                              {
                                                                                                                                 §§push(!§§pop());
                                                                                                                                 if(_loc26_ || Boolean(param1))
                                                                                                                                 {
                                                                                                                                    addr06a4:
                                                                                                                                    if(§§pop())
                                                                                                                                    {
                                                                                                                                       if(!_loc27_)
                                                                                                                                       {
                                                                                                                                          addr06ae:
                                                                                                                                          if(_loc8_.userLevel >= _loc9_.expansionBuyUnlockLevel)
                                                                                                                                          {
                                                                                                                                             if(_loc26_)
                                                                                                                                             {
                                                                                                                                                §§push(_loc3_.clickObject);
                                                                                                                                                if(_loc26_)
                                                                                                                                                {
                                                                                                                                                   addr06cc:
                                                                                                                                                   _loc16_ = §§pop() as ExpansionFieldObject;
                                                                                                                                                   if(!_loc27_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc5_.isBuyableExpansions(_loc16_.expansionFieldObjectVo.configPlayfieldItemVo.id))
                                                                                                                                                      {
                                                                                                                                                         if(_loc26_ || Boolean(this))
                                                                                                                                                         {
                                                                                                                                                            facade.sendNotification(MiniLayerConstants.OPEN_MINI_EXPANSION,_loc16_);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   addr070a:
                                                                                                                                                   §§push(_loc3_.clickObject);
                                                                                                                                                   if(_loc26_ || Boolean(this))
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() is BoulderFieldObject);
                                                                                                                                                      if(_loc26_)
                                                                                                                                                      {
                                                                                                                                                         var _temp_28:* = §§pop();
                                                                                                                                                         §§push(_temp_28);
                                                                                                                                                         §§push(_temp_28);
                                                                                                                                                         if(!_loc27_)
                                                                                                                                                         {
                                                                                                                                                            if(§§pop())
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc27_ && Boolean(_loc3_)))
                                                                                                                                                               {
                                                                                                                                                                  §§pop();
                                                                                                                                                                  if(!(_loc27_ && Boolean(param1)))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc3_.clickObject);
                                                                                                                                                                     if(_loc26_)
                                                                                                                                                                     {
                                                                                                                                                                        addr0758:
                                                                                                                                                                        §§push((§§pop() as BoulderFieldObject).boulderObjectVo.userInteractionLocked);
                                                                                                                                                                        if(!_loc27_)
                                                                                                                                                                        {
                                                                                                                                                                           addr0768:
                                                                                                                                                                           §§push(!§§pop());
                                                                                                                                                                           if(_loc26_ || Boolean(this))
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr0777);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr07c9);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr110d);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr11a1);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr111f);
                                                                                                                                                            }
                                                                                                                                                            addr0777:
                                                                                                                                                            if(§§pop())
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc27_ && Boolean(_loc3_)))
                                                                                                                                                               {
                                                                                                                                                                  sendNotification(ApplicationNotificationConstants.BOULDER_CLICKED,_loc3_.clickObject);
                                                                                                                                                                  if(!_loc27_)
                                                                                                                                                                  {
                                                                                                                                                                     return;
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  addr07d3:
                                                                                                                                                                  _loc10_ = BillboardObject(_loc3_.clickObject);
                                                                                                                                                                  if(!_loc27_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc6_.isBaseViewEnabled);
                                                                                                                                                                     if(!(_loc27_ && Boolean(_loc3_)))
                                                                                                                                                                     {
                                                                                                                                                                        if(§§pop())
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc26_ || Boolean(_loc2_))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc10_.billboardObjectVo);
                                                                                                                                                                              if(!_loc27_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop().isConnectedToStreet);
                                                                                                                                                                                 if(_loc26_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop());
                                                                                                                                                                                    if(_loc26_)
                                                                                                                                                                                    {
                                                                                                                                                                                       var _temp_35:* = §§pop();
                                                                                                                                                                                       §§push(_temp_35);
                                                                                                                                                                                       §§push(_temp_35);
                                                                                                                                                                                       if(_loc26_ || Boolean(_loc2_))
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!§§pop())
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc26_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§pop();
                                                                                                                                                                                                if(!(_loc27_ && Boolean(this)))
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc3_.clickObject);
                                                                                                                                                                                                   if(!_loc27_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() is SpecialFieldObject);
                                                                                                                                                                                                      if(!(_loc27_ && Boolean(_loc3_)))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr0869:
                                                                                                                                                                                                         if(§§pop())
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!_loc27_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               _loc6_.changeBaseViewForSingleBillboard(_loc10_);
                                                                                                                                                                                                               if(!(_loc27_ && Boolean(param1)))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc3_.oldClickObject != null)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc26_ || Boolean(_loc3_))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr08a0:
                                                                                                                                                                                                                        _loc17_ = BillboardObject(_loc3_.oldClickObject);
                                                                                                                                                                                                                        if(_loc26_ || Boolean(this))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           _loc6_.changeBaseViewForSingleBillboard(_loc17_);
                                                                                                                                                                                                                           if(_loc26_ || Boolean(param1))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              _loc3_.oldClickObject = null;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr08e4:
                                                                                                                                                                                                                        _loc3_.oldClickObject = _loc3_.clickObject;
                                                                                                                                                                                                                        if(!_loc27_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr08f2:
                                                                                                                                                                                                                           §§push(_loc10_.billboardObjectVo);
                                                                                                                                                                                                                           if(!(_loc27_ && Boolean(_loc2_)))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop().isConnectedToStreet);
                                                                                                                                                                                                                              if(_loc26_ || Boolean(_loc3_))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(§§pop())
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!(_loc27_ && Boolean(this)))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr0927:
                                                                                                                                                                                                                                       §§push(_loc10_.billboardObjectVo);
                                                                                                                                                                                                                                       if(_loc26_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr0931:
                                                                                                                                                                                                                                          §§push(§§pop().openConstructionLayer);
                                                                                                                                                                                                                                          if(_loc26_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(§§pop());
                                                                                                                                                                                                                                             if(!_loc27_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                var _temp_46:* = §§pop();
                                                                                                                                                                                                                                                §§push(_temp_46);
                                                                                                                                                                                                                                                §§push(_temp_46);
                                                                                                                                                                                                                                                if(!_loc27_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(§§pop())
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(!_loc27_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§pop();
                                                                                                                                                                                                                                                         if(!_loc27_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(_loc7_.shiftIsPressed);
                                                                                                                                                                                                                                                            if(_loc26_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr0964:
                                                                                                                                                                                                                                                               §§push(!§§pop());
                                                                                                                                                                                                                                                               if(_loc26_ || Boolean(_loc3_))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr0973:
                                                                                                                                                                                                                                                                  if(§§pop())
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc26_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(_loc10_ is MysteryBuildingFieldObject);
                                                                                                                                                                                                                                                                        if(!_loc27_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(§§pop())
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(!_loc27_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 sendNotification(MiniLayerConstants.OPEN_MINI_MYSTERY_CONSTRUCTION,_loc10_);
                                                                                                                                                                                                                                                                                 if(!(_loc27_ && Boolean(_loc3_)))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§goto(addr106d);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1085);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr0a30:
                                                                                                                                                                                                                                                                                 sendNotification(ApplicationNotificationConstants.START_MYSTERYBUILDING_UNWRAP,_loc10_);
                                                                                                                                                                                                                                                                                 if(!_loc26_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr0fe5:
                                                                                                                                                                                                                                                                                    §§push(_loc7_.shiftIsPressed);
                                                                                                                                                                                                                                                                                    if(!(_loc27_ && Boolean(_loc3_)))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr0ff8:
                                                                                                                                                                                                                                                                                       §§push(!§§pop());
                                                                                                                                                                                                                                                                                       if(!_loc27_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr0fff:
                                                                                                                                                                                                                                                                                          if(§§pop())
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(!(_loc27_ && Boolean(_loc2_)))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                addr1011:
                                                                                                                                                                                                                                                                                                this.openDepartmentPopup(_loc3_.clickObject as InfrastructureBuildingFieldObject);
                                                                                                                                                                                                                                                                                                if(_loc26_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   addr1025:
                                                                                                                                                                                                                                                                                                   §§push(_loc10_ is AcademyFieldObject);
                                                                                                                                                                                                                                                                                                   if(_loc26_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      addr1031:
                                                                                                                                                                                                                                                                                                      var _temp_52:* = §§pop();
                                                                                                                                                                                                                                                                                                      addr1032:
                                                                                                                                                                                                                                                                                                      §§push(_temp_52);
                                                                                                                                                                                                                                                                                                      if(_temp_52)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(!_loc27_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            addr103c:
                                                                                                                                                                                                                                                                                                            §§pop();
                                                                                                                                                                                                                                                                                                            if(_loc26_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               addr104f:
                                                                                                                                                                                                                                                                                                               addr1043:
                                                                                                                                                                                                                                                                                                               §§push(_loc7_.shiftIsPressed);
                                                                                                                                                                                                                                                                                                               if(!_loc27_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  addr104e:
                                                                                                                                                                                                                                                                                                                  §§push(!§§pop());
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               if(§§pop())
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(!_loc27_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     addr1059:
                                                                                                                                                                                                                                                                                                                     this.openAcademyPopup(_loc3_.clickObject as AcademyFieldObject);
                                                                                                                                                                                                                                                                                                                     if(!_loc27_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        addr106d:
                                                                                                                                                                                                                                                                                                                        (_loc10_ as IBuildUpManagerImplementation).invalidateBuildUpManager();
                                                                                                                                                                                                                                                                                                                        if(_loc26_ || Boolean(_loc2_))
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           addr1085:
                                                                                                                                                                                                                                                                                                                           _loc10_.invalidateEstablishedManager();
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr11a9);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr11a9);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr106d);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr1085);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr104f);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr103c);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr106d);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1025);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr104e);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1031);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           else
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              sendNotification(ApplicationNotificationConstants.OPEN_CONSTRUCTION_LAYER,_loc10_);
                                                                                                                                                                                                                                                                              if(_loc26_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr106d);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr0cbc:
                                                                                                                                                                                                                                                                           if(§§pop())
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(_loc26_ || Boolean(param1))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr0cce:
                                                                                                                                                                                                                                                                                 §§push(_loc10_.billboardObjectVo);
                                                                                                                                                                                                                                                                                 if(_loc26_ || Boolean(_loc2_))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr0ce0:
                                                                                                                                                                                                                                                                                    (§§pop() as IEventDrop).currentEventLocaleId = _loc2_.currentRunningEventQuestLocaleId;
                                                                                                                                                                                                                                                                                    if(_loc26_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr0cf1:
                                                                                                                                                                                                                                                                                       sendNotification(ApplicationNotificationConstants.PREPARE_BILLBOARDOBJECT_FLOATERMANAGER,_loc10_);
                                                                                                                                                                                                                                                                                       if(!_loc27_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          _loc10_.invalidateInformationFloaterManager();
                                                                                                                                                                                                                                                                                          if(_loc26_ || Boolean(this))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             addr0d17:
                                                                                                                                                                                                                                                                                             _loc10_.invalidateIconStateManager(true);
                                                                                                                                                                                                                                                                                             if(_loc26_ || Boolean(_loc3_))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                addr0d2c:
                                                                                                                                                                                                                                                                                                §§push(_loc10_.billboardObjectVo);
                                                                                                                                                                                                                                                                                                if(_loc26_ || Boolean(this))
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   addr0d3e:
                                                                                                                                                                                                                                                                                                   §§pop().userInteractionLocked = true;
                                                                                                                                                                                                                                                                                                   if(_loc26_ || Boolean(param1))
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§goto(addr106d);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr11a9);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   addr0dd7:
                                                                                                                                                                                                                                                                                                   §§push(§§pop().isReadyForMasteryTraitSelection);
                                                                                                                                                                                                                                                                                                   if(!_loc27_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      addr0de0:
                                                                                                                                                                                                                                                                                                      if(§§pop())
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(_loc26_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            addr0df3:
                                                                                                                                                                                                                                                                                                            _loc21_ = (_loc10_ as ResidentialFieldObject).residentialFieldObjectVo.buildingDTO.currentMasteryBonus;
                                                                                                                                                                                                                                                                                                            addr0dea:
                                                                                                                                                                                                                                                                                                            if(_loc26_ || Boolean(this))
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               facade.sendNotification(ApplicationNotificationConstants.OPEN_MASTERY_TRAIT_SELECTION_LAYER,_loc21_.configBonusId);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         else
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            addr0e43:
                                                                                                                                                                                                                                                                                                            §§push(_loc10_ is ResidentialFieldObject);
                                                                                                                                                                                                                                                                                                            if(_loc26_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               addr0e4f:
                                                                                                                                                                                                                                                                                                               var _temp_60:* = §§pop();
                                                                                                                                                                                                                                                                                                               §§push(_temp_60);
                                                                                                                                                                                                                                                                                                               §§push(_temp_60);
                                                                                                                                                                                                                                                                                                               if(_loc26_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  addr0e56:
                                                                                                                                                                                                                                                                                                                  if(§§pop())
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(!(_loc27_ && Boolean(param1)))
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        addr0e68:
                                                                                                                                                                                                                                                                                                                        §§pop();
                                                                                                                                                                                                                                                                                                                        if(!(_loc27_ && Boolean(param1)))
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           addr0e77:
                                                                                                                                                                                                                                                                                                                           §§push(_loc7_.shiftIsPressed);
                                                                                                                                                                                                                                                                                                                           if(!_loc27_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§push(!§§pop());
                                                                                                                                                                                                                                                                                                                              if(!_loc27_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 addr0e89:
                                                                                                                                                                                                                                                                                                                                 if(§§pop())
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    if(_loc26_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       addr0e93:
                                                                                                                                                                                                                                                                                                                                       sendNotification(ApplicationNotificationConstants.OPEN_RESIDENTIALBOOK,{"residential":(_loc10_ as ResidentialFieldObject).residentialFieldObjectVo});
                                                                                                                                                                                                                                                                                                                                       if(!(_loc27_ && Boolean(param1)))
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          addr0eb9:
                                                                                                                                                                                                                                                                                                                                          §§push(_loc10_ is ProductionFieldObject);
                                                                                                                                                                                                                                                                                                                                          if(!_loc27_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             var _temp_64:* = §§pop();
                                                                                                                                                                                                                                                                                                                                             §§push(_temp_64);
                                                                                                                                                                                                                                                                                                                                             §§push(_temp_64);
                                                                                                                                                                                                                                                                                                                                             if(_loc26_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                if(§§pop())
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   if(!_loc27_)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      addr0ed6:
                                                                                                                                                                                                                                                                                                                                                      §§pop();
                                                                                                                                                                                                                                                                                                                                                      if(!_loc27_)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         §§push(_loc7_.shiftIsPressed);
                                                                                                                                                                                                                                                                                                                                                         if(_loc26_)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            addr0ee8:
                                                                                                                                                                                                                                                                                                                                                            §§push(!§§pop());
                                                                                                                                                                                                                                                                                                                                                            if(_loc26_ || Boolean(_loc3_))
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               addr0ef7:
                                                                                                                                                                                                                                                                                                                                                               if(§§pop())
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  if(!(_loc27_ && Boolean(_loc2_)))
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     addr0f09:
                                                                                                                                                                                                                                                                                                                                                                     this.openProductionPopup(_loc3_.clickObject as ProductionFieldObject);
                                                                                                                                                                                                                                                                                                                                                                     if(!(_loc27_ && Boolean(_loc3_)))
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        addr0f25:
                                                                                                                                                                                                                                                                                                                                                                        §§push(_loc10_ is ShopFieldObject);
                                                                                                                                                                                                                                                                                                                                                                        if(_loc26_ || Boolean(_loc3_))
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           addr0f39:
                                                                                                                                                                                                                                                                                                                                                                           var _temp_69:* = §§pop();
                                                                                                                                                                                                                                                                                                                                                                           §§push(_temp_69);
                                                                                                                                                                                                                                                                                                                                                                           §§push(_temp_69);
                                                                                                                                                                                                                                                                                                                                                                           if(_loc26_ || Boolean(_loc3_))
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              addr0f48:
                                                                                                                                                                                                                                                                                                                                                                              if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 if(!(_loc27_ && Boolean(_loc2_)))
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    §§pop();
                                                                                                                                                                                                                                                                                                                                                                                    if(_loc26_)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       addr0f61:
                                                                                                                                                                                                                                                                                                                                                                                       §§push(_loc7_.shiftIsPressed);
                                                                                                                                                                                                                                                                                                                                                                                       if(!(_loc27_ && Boolean(this)))
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          addr0f74:
                                                                                                                                                                                                                                                                                                                                                                                          §§push(!§§pop());
                                                                                                                                                                                                                                                                                                                                                                                          if(_loc26_)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             addr0f7b:
                                                                                                                                                                                                                                                                                                                                                                                             if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                if(!(_loc27_ && Boolean(this)))
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   addr0f8d:
                                                                                                                                                                                                                                                                                                                                                                                                   this.openShopPopup(_loc3_.clickObject as ShopFieldObject);
                                                                                                                                                                                                                                                                                                                                                                                                   if(!(_loc27_ && Boolean(_loc2_)))
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      addr0fa9:
                                                                                                                                                                                                                                                                                                                                                                                                      §§push(_loc10_ is InfrastructureBuildingFieldObject);
                                                                                                                                                                                                                                                                                                                                                                                                      if(!(_loc27_ && Boolean(param1)))
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         var _temp_76:* = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                         §§push(_temp_76);
                                                                                                                                                                                                                                                                                                                                                                                                         §§push(_temp_76);
                                                                                                                                                                                                                                                                                                                                                                                                         if(_loc26_ || Boolean(param1))
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            addr0fcc:
                                                                                                                                                                                                                                                                                                                                                                                                            if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               if(_loc26_)
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  addr0fd6:
                                                                                                                                                                                                                                                                                                                                                                                                                  §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                  if(_loc26_ || Boolean(_loc2_))
                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr0fe5);
                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr1043);
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr104e);
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr0fff);
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1032);
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1031);
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr0fe5);
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr0fa9);
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr103c);
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr0f7b);
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr106d);
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr0fff);
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr0f7b);
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr1032);
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr0ff8);
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1025);
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr0f61);
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               §§goto(addr0f25);
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr0f7b);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr0fff);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1085);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr103c);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr0ef7);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr0f48);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr0ee8);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§goto(addr0fa9);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr1085);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr0eb9);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr0fd6);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr0f7b);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr0f61);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr0fff);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr0e89);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr0fcc);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr0ef7);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr106d);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         addr0e28:
                                                                                                                                                                                                                                                                                                         addr0e23:
                                                                                                                                                                                                                                                                                                         §§push((_loc3_.clickObject as BillboardObject).billboardObjectVo.isExpansionObject);
                                                                                                                                                                                                                                                                                                         if(!_loc27_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(!§§pop())
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(_loc26_ || Boolean(param1))
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§goto(addr0e43);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr0f09);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr106d);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr0f39);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr104f);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr11a9);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr0dea);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr1059);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1011);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr0e28);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr0dae:
                                                                                                                                                                                                                                                                                 this.inaugurateBuilding(_loc10_,_loc7_.shiftIsPressed);
                                                                                                                                                                                                                                                                                 if(!(_loc26_ || Boolean(_loc2_)))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§goto(addr0dea);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr106d);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr0cf1);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr0f61);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(_loc10_ is MysteryBuildingFieldObject);
                                                                                                                                                                                                                                                                     if(!_loc27_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        var _temp_81:* = §§pop();
                                                                                                                                                                                                                                                                        §§push(_temp_81);
                                                                                                                                                                                                                                                                        §§push(_temp_81);
                                                                                                                                                                                                                                                                        if(!(_loc27_ && Boolean(_loc2_)))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(§§pop())
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(!(_loc27_ && Boolean(param1)))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§pop();
                                                                                                                                                                                                                                                                                 if(_loc26_ || Boolean(param1))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr0a04:
                                                                                                                                                                                                                                                                                    §§push(_loc10_.billboardObjectVo);
                                                                                                                                                                                                                                                                                    if(_loc26_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(§§pop().isHarvestReady);
                                                                                                                                                                                                                                                                                       if(_loc26_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr0a17:
                                                                                                                                                                                                                                                                                          §§push(§§pop());
                                                                                                                                                                                                                                                                                          if(!(_loc27_ && Boolean(_loc3_)))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             addr0a26:
                                                                                                                                                                                                                                                                                             if(§§pop())
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(_loc26_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§goto(addr0a30);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§goto(addr0cce);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(_loc10_.billboardObjectVo);
                                                                                                                                                                                                                                                                                                if(_loc26_ || Boolean(this))
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(§§pop().isHarvestReady);
                                                                                                                                                                                                                                                                                                   if(!_loc27_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(§§pop())
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(_loc26_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(_loc10_.billboardObjectVo);
                                                                                                                                                                                                                                                                                                            if(!_loc27_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(§§pop().isReadyForMasteryTraitSelection);
                                                                                                                                                                                                                                                                                                               if(!(_loc27_ && Boolean(_loc3_)))
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(§§pop())
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(!(_loc27_ && Boolean(this)))
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§push((_loc10_ as ResidentialFieldObject).residentialFieldObjectVo);
                                                                                                                                                                                                                                                                                                                        if(!(_loc27_ && Boolean(_loc2_)))
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           _loc18_ = §§pop().buildingDTO.currentMasteryBonus;
                                                                                                                                                                                                                                                                                                                           if(!_loc27_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              facade.sendNotification(ApplicationNotificationConstants.OPEN_MASTERY_TRAIT_SELECTION_LAYER,_loc18_.configBonusId);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§goto(addr0df3);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     else
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        addr0b02:
                                                                                                                                                                                                                                                                                                                        §§push(_loc10_.billboardObjectVo);
                                                                                                                                                                                                                                                                                                                        if(!(_loc27_ && Boolean(param1)))
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§push(§§pop() is IEventDrop);
                                                                                                                                                                                                                                                                                                                           if(!_loc27_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              addr0b1e:
                                                                                                                                                                                                                                                                                                                              if(§§pop())
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 if(_loc26_ || Boolean(_loc3_))
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§push(_loc10_ is ProductionFieldObject);
                                                                                                                                                                                                                                                                                                                                    if(_loc26_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       var _temp_92:* = §§pop();
                                                                                                                                                                                                                                                                                                                                       §§push(_temp_92);
                                                                                                                                                                                                                                                                                                                                       §§push(_temp_92);
                                                                                                                                                                                                                                                                                                                                       if(!(_loc27_ && Boolean(param1)))
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          if(§§pop())
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             if(_loc26_ || Boolean(_loc2_))
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§pop();
                                                                                                                                                                                                                                                                                                                                                if(_loc26_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   §§push(_loc2_.currentRunningEventQuestLocaleId);
                                                                                                                                                                                                                                                                                                                                                   if(_loc26_)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      §§push("");
                                                                                                                                                                                                                                                                                                                                                      if(!_loc27_)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         §§push(§§pop() == §§pop());
                                                                                                                                                                                                                                                                                                                                                         if(_loc26_)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            addr0b7d:
                                                                                                                                                                                                                                                                                                                                                            §§push(!§§pop());
                                                                                                                                                                                                                                                                                                                                                            if(!_loc27_)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               addr0b84:
                                                                                                                                                                                                                                                                                                                                                               if(§§pop())
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  if(!(_loc27_ && Boolean(param1)))
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     var _loc22_:int = 0;
                                                                                                                                                                                                                                                                                                                                                                     if(!(_loc27_ && Boolean(this)))
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        for each(_loc19_ in _loc10_.billboardObjectVo.activePhases)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           if(!(_loc27_ && Boolean(this)))
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              var _loc24_:int = 0;
                                                                                                                                                                                                                                                                                                                                                                              if(_loc26_)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 for each(_loc20_ in _loc19_.config.listEntryOutputs)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    §§push(_loc20_.goodConfig);
                                                                                                                                                                                                                                                                                                                                                                                    if(!_loc27_)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       §§push(§§pop() == null);
                                                                                                                                                                                                                                                                                                                                                                                       if(!(_loc27_ && Boolean(param1)))
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          §§push(!§§pop());
                                                                                                                                                                                                                                                                                                                                                                                          if(!_loc27_)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             var _temp_100:* = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                             §§push(_temp_100);
                                                                                                                                                                                                                                                                                                                                                                                             if(_temp_100)
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                if(!_loc27_)
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   addr0c1d:
                                                                                                                                                                                                                                                                                                                                                                                                   §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                   if(_loc27_)
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      continue;
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                   addr0c29:
                                                                                                                                                                                                                                                                                                                                                                                                   §§push(_loc20_.goodConfig.isEventGood);
                                                                                                                                                                                                                                                                                                                                                                                                   if(!(_loc27_ && Boolean(param1)))
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      addr0c3a:
                                                                                                                                                                                                                                                                                                                                                                                                      §§push(§§pop());
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                if(!_loc27_)
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   (_loc10_.billboardObjectVo as IEventDrop).currentEventLocaleId = _loc2_.currentRunningEventQuestLocaleId;
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             continue;
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr0c1d);
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr0c3a);
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr0c29);
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     if(_loc26_)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr0cf1);
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr0d2c);
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr0fe5);
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               else
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  §§push(_loc10_ is ResidentialFieldObject);
                                                                                                                                                                                                                                                                                                                                                                  if(!_loc27_)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     var _temp_102:* = §§pop();
                                                                                                                                                                                                                                                                                                                                                                     §§push(_temp_102);
                                                                                                                                                                                                                                                                                                                                                                     §§push(_temp_102);
                                                                                                                                                                                                                                                                                                                                                                     if(!_loc27_)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        addr0c87:
                                                                                                                                                                                                                                                                                                                                                                        if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           if(!(_loc27_ && Boolean(_loc2_)))
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              addr0c99:
                                                                                                                                                                                                                                                                                                                                                                              §§pop();
                                                                                                                                                                                                                                                                                                                                                                              if(!_loc27_)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 addr0ca6:
                                                                                                                                                                                                                                                                                                                                                                                 addr0ca4:
                                                                                                                                                                                                                                                                                                                                                                                 §§push(_loc2_.currentRunningEventQuestLocaleId == "");
                                                                                                                                                                                                                                                                                                                                                                                 if(_loc26_ || Boolean(_loc2_))
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    §§push(!§§pop());
                                                                                                                                                                                                                                                                                                                                                                                    if(_loc26_)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr0cbc);
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr0ed6);
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr0f74);
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr1011);
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr103c);
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr0cbc);
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr0e56);
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               §§goto(addr0de0);
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr0e68);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr0e4f);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr0ca6);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr0ca4);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr0cf1);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr0cbc);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr0b84);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§goto(addr0f48);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr0fff);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr0dea);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr0cf1);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           else
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              addr0d67:
                                                                                                                                                                                                                                                                                                                              if(!§§pop())
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 if(_loc26_ || Boolean(_loc3_))
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§push(_loc10_.billboardObjectVo);
                                                                                                                                                                                                                                                                                                                                    if(_loc26_ || Boolean(param1))
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       addr0d8b:
                                                                                                                                                                                                                                                                                                                                       §§push(§§pop().isReadyToInaugurate);
                                                                                                                                                                                                                                                                                                                                       if(_loc26_ || Boolean(_loc3_))
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          addr0d9c:
                                                                                                                                                                                                                                                                                                                                          if(§§pop())
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             if(!(_loc27_ && Boolean(param1)))
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§goto(addr0dae);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§push(_loc10_.billboardObjectVo);
                                                                                                                                                                                                                                                                                                                                             if(!_loc27_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§goto(addr0dd7);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr0e28);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr106d);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§goto(addr0e68);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr0e28);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr0fe5);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr106d);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr0ce0);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr106d);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_BUILDING_HARVESTPHASE_PROCESS,{"vo":_loc10_.billboardObjectVo});
                                                                                                                                                                                                                                                                                                                     if(!(_loc27_ && Boolean(_loc3_)))
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        _loc4_.playBuildingClick();
                                                                                                                                                                                                                                                                                                                        if(!_loc27_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§goto(addr0b02);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr0e77);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr0cf1);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr0e68);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               addr0d5e:
                                                                                                                                                                                                                                                                                                               §§push(§§pop().isHarvestReady);
                                                                                                                                                                                                                                                                                                               if(!_loc27_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§goto(addr0d67);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr104f);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr0f09);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(_loc10_.billboardObjectVo);
                                                                                                                                                                                                                                                                                                         if(_loc26_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§goto(addr0d5e);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr0d8b);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr103c);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr0d5e);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr104f);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr0c99);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr0a26);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr0dd7);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr0f8d);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr0b7d);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr0a26);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr0c87);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr0e68);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr0a17);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr0b1e);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr0e93);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr0a17);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr0973);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr0c87);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr0e68);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr0c99);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr0d3e);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1085);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr11a9);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr0964);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr0d5e);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr0e93);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr106d);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr08e4);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr0dae);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr0927);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr08f2);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr0d9c);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr0e23);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr0d17);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr0a26);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr0869);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr0f48);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr0e4f);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr0931);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr08a0);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr08f2);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr0d9c);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr0a04);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc3_.clickObject);
                                                                                                                                                               if(_loc26_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() is IBuildUpManagerImplementation);
                                                                                                                                                                  if(!(_loc27_ && Boolean(_loc2_)))
                                                                                                                                                                  {
                                                                                                                                                                     addr07c9:
                                                                                                                                                                     if(§§pop())
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc26_)
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr07d3);
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           addr1109:
                                                                                                                                                                           addr110d:
                                                                                                                                                                           §§push(_loc3_.clickObject is CitySquareFieldObject);
                                                                                                                                                                           if(_loc26_ || Boolean(this))
                                                                                                                                                                           {
                                                                                                                                                                              addr111f:
                                                                                                                                                                              if(§§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc27_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr112e:
                                                                                                                                                                                    if(_loc6_.isBaseViewEnabled)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc26_ || Boolean(_loc3_))
                                                                                                                                                                                       {
                                                                                                                                                                                          addr1140:
                                                                                                                                                                                          _loc6_.changeBaseViewForSingleBillboard(_loc3_.clickObject as BillboardObject);
                                                                                                                                                                                          if(_loc26_ || Boolean(this))
                                                                                                                                                                                          {
                                                                                                                                                                                             addr115b:
                                                                                                                                                                                             if(_loc3_.oldClickObject != null)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc26_ || Boolean(this))
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr1181:
                                                                                                                                                                                                   _loc6_.changeBaseViewForSingleBillboard(BillboardObject(_loc3_.oldClickObject));
                                                                                                                                                                                                   if(!_loc27_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr1196:
                                                                                                                                                                                                      _loc3_.oldClickObject = null;
                                                                                                                                                                                                      if(!_loc27_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr11a1:
                                                                                                                                                                                                         _loc3_.oldClickObject = _loc3_.clickObject;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr11a9);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr11a1);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr11a9);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr11a1);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1196);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr115b);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr11a9);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1140);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr11a9);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr112e);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc3_.clickObject);
                                                                                                                                                                        if(_loc26_)
                                                                                                                                                                        {
                                                                                                                                                                           addr1099:
                                                                                                                                                                           §§push(§§pop() is DecorationFieldObject);
                                                                                                                                                                           if(_loc26_ || Boolean(param1))
                                                                                                                                                                           {
                                                                                                                                                                              var _temp_116:* = §§pop();
                                                                                                                                                                              §§push(_temp_116);
                                                                                                                                                                              §§push(_temp_116);
                                                                                                                                                                              if(_loc26_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr10b2:
                                                                                                                                                                                 if(!§§pop())
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!(_loc27_ && Boolean(this)))
                                                                                                                                                                                    {
                                                                                                                                                                                       addr10c4:
                                                                                                                                                                                       §§pop();
                                                                                                                                                                                       if(_loc26_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr10cb:
                                                                                                                                                                                          §§push(_loc3_.clickObject);
                                                                                                                                                                                          if(_loc26_ || Boolean(_loc2_))
                                                                                                                                                                                          {
                                                                                                                                                                                             addr10dd:
                                                                                                                                                                                             §§push(§§pop() is CinemaFieldObject);
                                                                                                                                                                                             if(_loc26_ || Boolean(_loc3_))
                                                                                                                                                                                             {
                                                                                                                                                                                                addr10ef:
                                                                                                                                                                                                var _temp_120:* = §§pop();
                                                                                                                                                                                                addr10f0:
                                                                                                                                                                                                §§push(_temp_120);
                                                                                                                                                                                                if(!_temp_120)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!(_loc27_ && Boolean(param1)))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr1102:
                                                                                                                                                                                                      §§pop();
                                                                                                                                                                                                      if(_loc26_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§goto(addr1109);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1181);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr112e);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr111f);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr110d);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1109);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr10ef);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr10f0);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1102);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr110d);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr10c4);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr10dd);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr11a9);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr10b2);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr10ef);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr1099);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1109);
                                                                                                                                          }
                                                                                                                                          §§goto(addr070a);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1196);
                                                                                                                                    }
                                                                                                                                    §§goto(addr070a);
                                                                                                                                 }
                                                                                                                                 §§goto(addr0768);
                                                                                                                              }
                                                                                                                              §§goto(addr112e);
                                                                                                                           }
                                                                                                                           §§goto(addr10cb);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr06a4);
                                                                                                                  }
                                                                                                                  §§goto(addr10f0);
                                                                                                               }
                                                                                                               §§goto(addr112e);
                                                                                                            }
                                                                                                            §§goto(addr0758);
                                                                                                         }
                                                                                                         §§goto(addr060a);
                                                                                                      }
                                                                                                      §§goto(addr0646);
                                                                                                   }
                                                                                                   §§goto(addr05fb);
                                                                                                }
                                                                                                §§goto(addr0646);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr05f1);
                                                                                       }
                                                                                       §§goto(addr05ee);
                                                                                    }
                                                                                    §§goto(addr0646);
                                                                                 }
                                                                                 §§goto(addr05e5);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push(_loc14_.specialFieldObjectVo);
                                                                                 if(_loc26_ || Boolean(_loc2_))
                                                                                 {
                                                                                    §§push(§§pop().isReadyForUpgrade());
                                                                                    if(_loc26_)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       if(_loc26_ || Boolean(_loc3_))
                                                                                       {
                                                                                          var _temp_124:* = §§pop();
                                                                                          §§push(_temp_124);
                                                                                          §§push(_temp_124);
                                                                                          if(_loc26_)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                if(_loc26_)
                                                                                                {
                                                                                                   addr03c1:
                                                                                                   §§pop();
                                                                                                   if(_loc26_ || Boolean(_loc3_))
                                                                                                   {
                                                                                                      §§push(_loc7_.shiftIsPressed);
                                                                                                      if(_loc26_ || Boolean(param1))
                                                                                                      {
                                                                                                         addr03e3:
                                                                                                         §§push(!§§pop());
                                                                                                         if(!_loc27_)
                                                                                                         {
                                                                                                            addr03ea:
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               if(!_loc27_)
                                                                                                               {
                                                                                                                  _loc15_ = {};
                                                                                                                  _loc15_.billboardVo = _loc14_.specialFieldObjectVo;
                                                                                                                  if(!_loc27_)
                                                                                                                  {
                                                                                                                     sendNotification(ApplicationNotificationConstants.OPEN_CONSTRUCTION_LAYER,_loc14_);
                                                                                                                  }
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§goto(addr05a4);
                                                                                                               }
                                                                                                               §§goto(addr0646);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§push(_loc14_.billboardObjectVo.openConstructionLayer);
                                                                                                               if(!_loc27_)
                                                                                                               {
                                                                                                                  addr0428:
                                                                                                                  var _temp_128:* = §§pop();
                                                                                                                  §§push(_temp_128);
                                                                                                                  §§push(_temp_128);
                                                                                                                  if(_loc26_ || Boolean(_loc2_))
                                                                                                                  {
                                                                                                                     addr0437:
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        if(_loc26_)
                                                                                                                        {
                                                                                                                           addr0441:
                                                                                                                           §§pop();
                                                                                                                           if(_loc26_)
                                                                                                                           {
                                                                                                                              addr0448:
                                                                                                                              §§push(_loc7_.shiftIsPressed);
                                                                                                                              if(!(_loc27_ && Boolean(_loc3_)))
                                                                                                                              {
                                                                                                                                 §§push(!§§pop());
                                                                                                                                 if(_loc26_ || Boolean(this))
                                                                                                                                 {
                                                                                                                                    addr046a:
                                                                                                                                    if(§§pop())
                                                                                                                                    {
                                                                                                                                       if(!_loc27_)
                                                                                                                                       {
                                                                                                                                          sendNotification(ApplicationNotificationConstants.OPEN_CONSTRUCTION_LAYER,_loc14_);
                                                                                                                                          if(!(_loc26_ || Boolean(this)))
                                                                                                                                          {
                                                                                                                                             addr04fd:
                                                                                                                                             if(_loc14_.billboardObjectVo.isReadyToInaugurate)
                                                                                                                                             {
                                                                                                                                                if(_loc26_ || Boolean(param1))
                                                                                                                                                {
                                                                                                                                                   addr0516:
                                                                                                                                                   this.inaugurateBuilding(_loc14_,_loc7_.shiftIsPressed);
                                                                                                                                                   if(_loc26_)
                                                                                                                                                   {
                                                                                                                                                      return;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr05fb);
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   addr056b:
                                                                                                                                                   §§push((_loc14_ as ScheduledDropFieldObject).scheduledDropFieldObjectVo);
                                                                                                                                                   if(_loc26_ || Boolean(_loc3_))
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop().isHarvestReady);
                                                                                                                                                      if(!_loc27_)
                                                                                                                                                      {
                                                                                                                                                         addr058b:
                                                                                                                                                         §§push(§§pop());
                                                                                                                                                         if(!_loc27_)
                                                                                                                                                         {
                                                                                                                                                            addr0592:
                                                                                                                                                            var _temp_135:* = §§pop();
                                                                                                                                                            addr0593:
                                                                                                                                                            §§push(_temp_135);
                                                                                                                                                            if(_temp_135)
                                                                                                                                                            {
                                                                                                                                                               if(_loc26_)
                                                                                                                                                               {
                                                                                                                                                                  addr059d:
                                                                                                                                                                  §§pop();
                                                                                                                                                                  if(_loc26_)
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr05a4);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr0646);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr05f1);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr05d3);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr05ee);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                sendNotification(ApplicationNotificationConstants.OPEN_CINEMA_LAYER);
                                                                                                                                                if(!(_loc26_ || Boolean(param1)))
                                                                                                                                                {
                                                                                                                                                   §§goto(addr05fb);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr0646);
                                                                                                                                       }
                                                                                                                                       §§goto(addr05e5);
                                                                                                                                    }
                                                                                                                                    §§goto(addr0646);
                                                                                                                                 }
                                                                                                                                 §§goto(addr05d3);
                                                                                                                              }
                                                                                                                              §§goto(addr05f1);
                                                                                                                           }
                                                                                                                           §§goto(addr060a);
                                                                                                                        }
                                                                                                                        §§goto(addr058b);
                                                                                                                     }
                                                                                                                     §§goto(addr046a);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     addr04b5:
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        if(!(_loc27_ && Boolean(_loc3_)))
                                                                                                                        {
                                                                                                                           §§pop();
                                                                                                                           if(_loc26_)
                                                                                                                           {
                                                                                                                              §§push(_loc14_.specialFieldObjectVo);
                                                                                                                              if(!(_loc27_ && Boolean(param1)))
                                                                                                                              {
                                                                                                                                 addr04e1:
                                                                                                                                 §§push(Boolean(§§pop().isConnectedToStreet));
                                                                                                                                 if(_loc26_)
                                                                                                                                 {
                                                                                                                                    addr04eb:
                                                                                                                                    if(§§pop())
                                                                                                                                    {
                                                                                                                                       if(_loc26_ || Boolean(_loc2_))
                                                                                                                                       {
                                                                                                                                          §§goto(addr04fd);
                                                                                                                                       }
                                                                                                                                       §§goto(addr0646);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§push(_loc14_ is ScheduledDropFieldObject);
                                                                                                                                       if(!_loc27_)
                                                                                                                                       {
                                                                                                                                          addr0559:
                                                                                                                                          if(§§pop())
                                                                                                                                          {
                                                                                                                                             if(!(_loc27_ && Boolean(_loc2_)))
                                                                                                                                             {
                                                                                                                                                §§goto(addr056b);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr0646);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr059d);
                                                                                                                                 }
                                                                                                                                 §§goto(addr0592);
                                                                                                                              }
                                                                                                                              §§goto(addr0600);
                                                                                                                           }
                                                                                                                           §§goto(addr0516);
                                                                                                                        }
                                                                                                                        §§goto(addr05d3);
                                                                                                                     }
                                                                                                                     §§goto(addr04eb);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr058b);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr0428);
                                                                                                      }
                                                                                                      §§goto(addr0441);
                                                                                                   }
                                                                                                   §§goto(addr0646);
                                                                                                }
                                                                                                §§goto(addr03e3);
                                                                                             }
                                                                                             §§goto(addr03ea);
                                                                                          }
                                                                                          §§goto(addr04b5);
                                                                                       }
                                                                                       §§goto(addr0559);
                                                                                    }
                                                                                    §§goto(addr0428);
                                                                                 }
                                                                                 §§goto(addr04e1);
                                                                              }
                                                                           }
                                                                           §§goto(addr0354);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(_loc14_ is CinemaFieldObject);
                                                                           if(!(_loc27_ && Boolean(this)))
                                                                           {
                                                                              var _temp_142:* = §§pop();
                                                                              §§push(_temp_142);
                                                                              §§push(_temp_142);
                                                                              if(_loc26_ || Boolean(_loc3_))
                                                                              {
                                                                                 §§goto(addr04b5);
                                                                              }
                                                                              §§goto(addr0593);
                                                                           }
                                                                        }
                                                                        §§goto(addr05c4);
                                                                     }
                                                                     §§goto(addr0559);
                                                                  }
                                                                  §§goto(addr0646);
                                                               }
                                                               §§goto(addr060a);
                                                            }
                                                            §§goto(addr0328);
                                                         }
                                                         §§goto(addr03c1);
                                                      }
                                                      §§goto(addr030e);
                                                   }
                                                   §§goto(addr0448);
                                                }
                                                §§goto(addr0592);
                                             }
                                             §§goto(addr030e);
                                          }
                                          §§goto(addr0437);
                                       }
                                       §§goto(addr0441);
                                    }
                                    §§goto(addr06cc);
                                 }
                                 §§goto(addr06ae);
                              }
                              §§goto(addr0646);
                           }
                           §§goto(addr0768);
                        }
                        §§goto(addr0758);
                     }
                  }
                  §§goto(addr01bd);
               }
               addr11a9:
               return;
            }
            §§goto(addr018c);
         }
         addr01bd:
         if(_loc8_.userLevel >= _loc9_.expansionBuyUnlockLevel)
         {
            addr01cb:
            _loc11_ = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
            for each(_loc12_ in _loc11_.expansionList)
            {
               if(_loc26_)
               {
                  _loc24_ = 0;
                  if(_loc26_)
                  {
                     for each(_loc13_ in _loc12_.expansionFieldObjectVo.temporaryAdded)
                     {
                        if(_loc13_ == (_loc3_.clickObject as BillboardObject).billboardObjectVo)
                        {
                           if(_loc26_)
                           {
                              if(!_loc5_.isBuyableExpansions(_loc12_.expansionFieldObjectVo.configPlayfieldItemVo.id))
                              {
                                 continue;
                              }
                              if(!_loc26_)
                              {
                                 continue;
                              }
                              facade.sendNotification(MiniLayerConstants.OPEN_MINI_EXPANSION,_loc12_);
                              if(!(_loc26_ || Boolean(param1)))
                              {
                                 continue;
                              }
                           }
                           return;
                        }
                     }
                  }
               }
            }
         }
      }
      
      private function inaugurateBuilding(param1:BillboardObject, param2:Boolean) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc3_:ConfigPhaseDTO = null;
         if(_loc4_)
         {
            §§push(param1 is ResidentialFieldObject);
            if(!(_loc5_ && Boolean(_loc3_)))
            {
               var _temp_2:* = §§pop();
               §§push(_temp_2);
               if(_temp_2)
               {
                  if(_loc4_ || Boolean(param1))
                  {
                     §§pop();
                     if(_loc4_ || Boolean(this))
                     {
                        §§goto(addr005c);
                     }
                     §§goto(addr0066);
                  }
                  §§goto(addr005b);
               }
               addr005c:
               §§goto(addr0054);
            }
            §§goto(addr005b);
         }
         addr0054:
         §§push(param2);
         if(!_loc5_)
         {
            addr005b:
            §§push(!§§pop());
         }
         if(§§pop())
         {
            if(_loc4_)
            {
               addr0066:
               sendNotification(ApplicationNotificationConstants.CHECK_RESIDENT_SELECTION,param1 as ResidentialFieldObject);
            }
         }
         else
         {
            _loc3_ = param1.billboardObjectVo.inaugurationPhase;
            if(!_loc5_)
            {
               §§push(param1.billboardObjectVo);
               if(!(_loc5_ && Boolean(this)))
               {
                  §§pop().informationFloaterPhase = _loc3_;
                  if(_loc4_ || param2)
                  {
                     param1.invalidateInformationFloaterManager();
                     if(_loc4_ || Boolean(this))
                     {
                        if(OptionsGlobalVariables.getInstance().showDropIcons)
                        {
                           if(_loc4_ || Boolean(this))
                           {
                              addr00e9:
                              if(_loc3_ != null)
                              {
                                 if(!_loc5_)
                                 {
                                    facade.sendNotification(ApplicationNotificationConstants.EVALUATE_DROPS,{
                                       "tO":param1,
                                       "cP":_loc3_
                                    });
                                    if(_loc4_ || Boolean(this))
                                    {
                                       addr011a:
                                       param1.billboardObjectVo.userInteractionLocked = true;
                                       addr0117:
                                       if(!_loc5_)
                                       {
                                          sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_BUILDING_INAUGURATE,{"vo":param1.billboardObjectVo});
                                          addr0124:
                                          if(!(_loc5_ && Boolean(param1)))
                                          {
                                             §§goto(addr0151);
                                          }
                                          §§goto(addr0164);
                                       }
                                    }
                                    addr0151:
                                    sendNotification(ApplicationNotificationConstants.SPAWN_INAUGURATE_CITIZEN,param1.billboardObjectVo);
                                    if(_loc4_)
                                    {
                                       addr0164:
                                       sendNotification(ApplicationNotificationConstants.CELEBRATING_CITIZEN,param1.billboardObjectVo);
                                    }
                                    §§goto(addr0171);
                                 }
                              }
                              §§goto(addr0117);
                           }
                           §§goto(addr0124);
                        }
                        §§goto(addr0117);
                     }
                     §§goto(addr00e9);
                  }
                  §§goto(addr0124);
               }
               §§goto(addr011a);
            }
            §§goto(addr0124);
         }
         addr0171:
      }
      
      private function openShopPopup(param1:ShopFieldObject) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc2_:PopupSettingsVo = new PopupSettingsVo(PopupSettingsVo.PAPER_POPUP);
         if(_loc4_ || Boolean(_loc2_))
         {
            _loc2_.modal = true;
            if(_loc4_ || Boolean(this))
            {
               _loc2_.viewClass = ShopPopup;
               if(_loc4_ || Boolean(this))
               {
                  addr0063:
                  _loc2_.mediatorClass = ShopBookMediator;
                  if(!(_loc5_ && _loc3_))
                  {
                     _loc2_.mediatorName = ShopBookMediator.NAME;
                  }
               }
               addr0090:
               var _loc3_:MainLayerProxy = facade.retrieveProxy(MainLayerProxy.NAME) as MainLayerProxy;
               if(!_loc5_)
               {
                  _loc2_.data = _loc3_.getShopDetailViewVo(param1.shopFieldObjectVo);
                  if(!_loc5_)
                  {
                     addr00ba:
                     facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc2_);
                  }
                  return;
               }
               §§goto(addr00ba);
            }
            §§goto(addr0063);
         }
         §§goto(addr0090);
      }
      
      private function openProductionPopup(param1:ProductionFieldObject) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc2_:PopupSettingsVo = new PopupSettingsVo(PopupSettingsVo.PAPER_POPUP);
         var _loc3_:MainLayerProxy = facade.retrieveProxy(MainLayerProxy.NAME) as MainLayerProxy;
         if(_loc4_)
         {
            _loc2_.modal = true;
            if(_loc4_)
            {
               addr0053:
               _loc2_.viewClass = ProductionPopup;
               if(!_loc5_)
               {
                  _loc2_.mediatorClass = ProductionPopupMediator;
                  if(_loc4_ || Boolean(this))
                  {
                     _loc2_.mediatorName = ProductionPopupMediator.NAME;
                     if(!_loc5_)
                     {
                        §§goto(addr008e);
                     }
                     §§goto(addr00a8);
                  }
                  addr008e:
                  _loc2_.data = _loc3_.getProductionDetailViewVo(param1.productionFieldObjectVo);
                  if(!(_loc5_ && Boolean(_loc3_)))
                  {
                     addr00a8:
                     facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc2_);
                  }
                  §§goto(addr00b3);
               }
               §§goto(addr00a8);
            }
            addr00b3:
            return;
         }
         §§goto(addr0053);
      }
      
      private function openDepartmentPopup(param1:InfrastructureBuildingFieldObject) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc2_:PopupSettingsVo = new PopupSettingsVo(PopupSettingsVo.PAPER_POPUP);
         if(_loc5_ || Boolean(param1))
         {
            _loc2_.modal = true;
            if(!_loc4_)
            {
               addr003b:
               _loc2_.viewClass = EmergencyDepartmentBook;
               if(_loc5_)
               {
                  §§goto(addr0048);
               }
               §§goto(addr0060);
            }
            addr0048:
            _loc2_.mediatorClass = EmergencyDepartmentBookMediator;
            if(!_loc4_)
            {
               addr0060:
               _loc2_.mediatorName = EmergencyDepartmentBookMediator.NAME;
            }
            var _loc3_:Object = {};
            if(!(_loc4_ && Boolean(_loc3_)))
            {
               _loc3_.index = DepartmentTabProxy.DEPARTMENT_INDEX;
               if(!(_loc4_ && Boolean(param1)))
               {
                  _loc3_.cat = param1.emergencyFieldObjectVo.department[0];
                  if(_loc5_)
                  {
                     addr00b9:
                     _loc2_.data = _loc3_;
                     if(_loc5_)
                     {
                        facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc2_);
                     }
                  }
                  §§goto(addr00ce);
               }
               §§goto(addr00b9);
            }
            addr00ce:
            return;
         }
         §§goto(addr003b);
      }
      
      private function openAcademyPopup(param1:AcademyFieldObject) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:PopupSettingsVo = new PopupSettingsVo(PopupSettingsVo.PAPER_POPUP);
         if(_loc4_)
         {
            _loc2_.modal = true;
            if(!_loc3_)
            {
               _loc2_.mediatorName = SchoolBookMediator.NAME;
               if(!(_loc3_ && _loc3_))
               {
                  addr0053:
                  _loc2_.mediatorClass = SchoolBookMediator;
                  if(!_loc3_)
                  {
                     _loc2_.viewClass = SchoolBook;
                     if(_loc4_)
                     {
                        _loc2_.data = param1;
                        if(_loc4_ || Boolean(_loc2_))
                        {
                           addr008b:
                           sendNotification(VirtualTaskNotificationInterest.ACADEMY_LAYER_OPENED);
                           if(_loc4_ || Boolean(param1))
                           {
                              facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc2_);
                           }
                        }
                     }
                     §§goto(addr00af);
                  }
                  §§goto(addr008b);
               }
               addr00af:
               return;
            }
            §§goto(addr0053);
         }
         §§goto(addr008b);
      }
      
      private function evaluateDrops(param1:BillboardObject) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            TweenMax.killDelayedCallsTo(this.evaluateDrops);
            if(_loc3_ || _loc3_)
            {
               sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_BUILDING_HARVESTPHASE_PROCESS,{"vo":param1.billboardObjectVo});
               if(!(_loc2_ && _loc2_))
               {
                  addr0066:
                  sendNotification(ApplicationNotificationConstants.PREPARE_BILLBOARDOBJECT_FLOATERMANAGER,param1);
                  if(_loc3_ || _loc3_)
                  {
                     param1.invalidateInformationFloaterManager();
                     if(!_loc2_)
                     {
                        addr0095:
                        if(param1 is ScheduledDropFieldObject)
                        {
                           if(_loc3_)
                           {
                              addr00a3:
                              (param1 as ScheduledDropFieldObject).scheduledDropFieldObjectVo.isAnimationPlaying = false;
                           }
                        }
                     }
                     §§goto(addr00af);
                  }
                  §§goto(addr00a3);
               }
               §§goto(addr0095);
            }
            addr00af:
            return;
         }
         §§goto(addr0066);
      }
   }
}

