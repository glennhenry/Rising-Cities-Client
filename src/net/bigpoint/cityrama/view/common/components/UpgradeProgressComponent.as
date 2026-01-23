package net.bigpoint.cityrama.view.common.components
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.model.residentialBook.vo.UpgradeProgressVo;
   import net.bigpoint.cityrama.view.common.skins.DynamicPlusButtonSkin;
   import net.bigpoint.cityrama.view.residentialBook.ui.components.ProgressBarComponent;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   public class UpgradeProgressComponent extends Group
   {
      
      public static const UPGRADE_BUILDING:String = "upgradeBuilding";
      
      public static const BUY_DD:String = "buyDD";
      
      public static const BUY_UPGRADE:String = "buyUpgrade";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_)
      {
         UPGRADE_BUILDING = "upgradeBuilding";
         if(!_loc1_)
         {
            BUY_DD = "buyDD";
            if(_loc2_)
            {
               BUY_UPGRADE = "buyUpgrade";
            }
         }
      }
      
      private var _1271589544buyButton:DynamicPlusButton;
      
      private var _1213523686infoLabel:LocaLabel;
      
      private var _1131509414progressBar:ProgressBarComponent;
      
      private var _676505710upgradeButton:MultistateButton;
      
      private var _1844912971upgradeIcon:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:UpgradeProgressVo;
      
      private var _dataIsDirty:Boolean;
      
      public function UpgradeProgressComponent()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            super();
            if(_loc2_ || _loc2_)
            {
               mx_internal::_document = this;
               if(_loc2_)
               {
                  this.mxmlContent = [this._UpgradeProgressComponent_HGroup1_c()];
                  if(_loc2_ || _loc2_)
                  {
                     this.addEventListener("creationComplete",this.___UpgradeProgressComponent_Group1_creationComplete);
                     if(_loc2_ || _loc1_)
                     {
                        addr0085:
                        this.addEventListener("removedFromStage",this.___UpgradeProgressComponent_Group1_removedFromStage);
                     }
                     §§goto(addr0091);
                  }
                  §§goto(addr0085);
               }
            }
            addr0091:
            return;
         }
         §§goto(addr0085);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            super.moduleFactory = param1;
            if(!_loc3_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc2_ || Boolean(param1))
                  {
                     return;
                  }
               }
               else
               {
                  this.__moduleFactoryInitialized = true;
               }
            }
         }
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            super.initialize();
         }
      }
      
      public function set data(param1:UpgradeProgressVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            if(!RandomUtilities.isEqual(param1,this._data))
            {
               if(_loc2_ || Boolean(param1))
               {
                  this._data = param1;
                  if(!(_loc3_ && _loc3_))
                  {
                     addr0052:
                     this._dataIsDirty = true;
                     if(_loc2_)
                     {
                        invalidateProperties();
                     }
                  }
                  §§goto(addr0061);
               }
               §§goto(addr0052);
            }
         }
         addr0061:
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            super.commitProperties();
            if(!(_loc3_ && _loc2_))
            {
               if(this._dataIsDirty)
               {
                  if(!(_loc3_ && _loc1_))
                  {
                     this._dataIsDirty = false;
                     if(_loc2_ || _loc1_)
                     {
                        §§push(this._data);
                        if(!(_loc3_ && _loc3_))
                        {
                           §§push(§§pop().upgradeCurrentLevel);
                           if(!_loc3_)
                           {
                              §§push(this._data);
                              if(!_loc3_)
                              {
                                 §§push(§§pop().upgradeNextLevel);
                                 if(!_loc3_)
                                 {
                                    if(§§pop() != §§pop())
                                    {
                                       if(!_loc3_)
                                       {
                                          §§push(this.upgradeButton);
                                          if(!_loc3_)
                                          {
                                             §§pop().label = LocaUtils.getString("rcl.booklayer.residential","rcl.booklayer.residential.upgradeReady");
                                             if(!(_loc3_ && Boolean(this)))
                                             {
                                                §§push(this.upgradeButton);
                                                if(_loc2_ || _loc1_)
                                                {
                                                   §§push(§§pop().sparkle);
                                                   if(!(_loc3_ && _loc1_))
                                                   {
                                                      §§push(true);
                                                      if(_loc2_ || _loc1_)
                                                      {
                                                         §§pop().visible = §§pop();
                                                         if(!_loc3_)
                                                         {
                                                            §§push(this.upgradeButton);
                                                            if(_loc2_ || _loc3_)
                                                            {
                                                               addr00fc:
                                                               §§pop().sparkle.includeInLayout = true;
                                                               addr00fb:
                                                               if(_loc2_)
                                                               {
                                                                  §§push(this.progressBar);
                                                                  if(_loc2_)
                                                                  {
                                                                     §§push(this._data);
                                                                     if(_loc2_ || _loc2_)
                                                                     {
                                                                        §§push(§§pop().currentProgress);
                                                                        if(_loc2_)
                                                                        {
                                                                           §§pop().progress = §§pop() / this._data.neededProgress;
                                                                           if(!(_loc3_ && _loc2_))
                                                                           {
                                                                              §§push(this.progressBar);
                                                                              if(!(_loc3_ && _loc3_))
                                                                              {
                                                                                 addr0155:
                                                                                 addr0152:
                                                                                 §§push(this._data.currentProgress + "/");
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    §§push(§§pop() + this._data.neededProgress);
                                                                                 }
                                                                                 §§pop().label = §§pop();
                                                                                 if(!(_loc3_ && _loc2_))
                                                                                 {
                                                                                    addr0184:
                                                                                    addr0181:
                                                                                    addr017d:
                                                                                    addr017a:
                                                                                    if(this._data.currentProgress == this._data.neededProgress)
                                                                                    {
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          §§push(this.infoLabel);
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             §§push(this.infoLabel);
                                                                                             if(_loc2_ || _loc1_)
                                                                                             {
                                                                                                §§push(false);
                                                                                                if(!(_loc3_ && Boolean(this)))
                                                                                                {
                                                                                                   var _temp_17:* = §§pop();
                                                                                                   §§push(_temp_17);
                                                                                                   §§push(_temp_17);
                                                                                                   if(_loc2_)
                                                                                                   {
                                                                                                      var _loc1_:* = §§pop();
                                                                                                      if(_loc2_)
                                                                                                      {
                                                                                                         §§pop().includeInLayout = §§pop();
                                                                                                         if(_loc2_ || Boolean(this))
                                                                                                         {
                                                                                                            §§push(_loc1_);
                                                                                                            if(!_loc3_)
                                                                                                            {
                                                                                                               if(_loc2_)
                                                                                                               {
                                                                                                                  §§pop().visible = §§pop();
                                                                                                                  if(!(_loc3_ && _loc2_))
                                                                                                                  {
                                                                                                                     addr01ec:
                                                                                                                     §§push(this.progressBar);
                                                                                                                     if(!(_loc3_ && _loc2_))
                                                                                                                     {
                                                                                                                        addr01fd:
                                                                                                                        §§push(this.progressBar);
                                                                                                                        if(_loc2_)
                                                                                                                        {
                                                                                                                           §§push(false);
                                                                                                                           if(_loc2_)
                                                                                                                           {
                                                                                                                              var _temp_21:* = §§pop();
                                                                                                                              §§push(_temp_21);
                                                                                                                              §§push(_temp_21);
                                                                                                                              if(!_loc3_)
                                                                                                                              {
                                                                                                                                 _loc1_ = §§pop();
                                                                                                                                 if(_loc2_)
                                                                                                                                 {
                                                                                                                                    §§pop().includeInLayout = §§pop();
                                                                                                                                    if(!(_loc3_ && Boolean(this)))
                                                                                                                                    {
                                                                                                                                       §§push(_loc1_);
                                                                                                                                       if(!_loc3_)
                                                                                                                                       {
                                                                                                                                          if(!_loc3_)
                                                                                                                                          {
                                                                                                                                             §§pop().visible = §§pop();
                                                                                                                                             if(!(_loc3_ && Boolean(this)))
                                                                                                                                             {
                                                                                                                                                addr0243:
                                                                                                                                                §§push(this.buyButton);
                                                                                                                                                if(_loc2_)
                                                                                                                                                {
                                                                                                                                                   §§push(this.buyButton);
                                                                                                                                                   if(!(_loc3_ && _loc1_))
                                                                                                                                                   {
                                                                                                                                                      §§push(true);
                                                                                                                                                      if(_loc2_)
                                                                                                                                                      {
                                                                                                                                                         var _temp_25:* = §§pop();
                                                                                                                                                         §§push(_temp_25);
                                                                                                                                                         §§push(_temp_25);
                                                                                                                                                         if(_loc2_ || _loc1_)
                                                                                                                                                         {
                                                                                                                                                            _loc1_ = §§pop();
                                                                                                                                                            if(!_loc3_)
                                                                                                                                                            {
                                                                                                                                                               §§pop().includeInLayout = §§pop();
                                                                                                                                                               if(!_loc3_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc1_);
                                                                                                                                                                  if(_loc2_ || _loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc2_ || _loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        §§pop().visible = §§pop();
                                                                                                                                                                        if(!_loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(this.upgradeButton);
                                                                                                                                                                           if(!_loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              addr02ab:
                                                                                                                                                                              §§push(this.upgradeButton);
                                                                                                                                                                              if(_loc2_ || _loc2_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(true);
                                                                                                                                                                                 if(!(_loc3_ && Boolean(this)))
                                                                                                                                                                                 {
                                                                                                                                                                                    var _temp_31:* = §§pop();
                                                                                                                                                                                    §§push(_temp_31);
                                                                                                                                                                                    §§push(_temp_31);
                                                                                                                                                                                    if(_loc2_ || _loc1_)
                                                                                                                                                                                    {
                                                                                                                                                                                       _loc1_ = §§pop();
                                                                                                                                                                                       if(_loc2_ || _loc1_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§pop().includeInLayout = §§pop();
                                                                                                                                                                                          if(_loc2_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc1_);
                                                                                                                                                                                             if(_loc2_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc2_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§pop().visible = §§pop();
                                                                                                                                                                                                   if(!(_loc3_ && _loc2_))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr03d0);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr0453);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             else
                                                                                                                                                                                             {
                                                                                                                                                                                                addr03ba:
                                                                                                                                                                                                if(!_loc3_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§pop().visible = §§pop();
                                                                                                                                                                                                   if(_loc2_ || _loc1_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr03d0:
                                                                                                                                                                                                      §§push(this.buyButton);
                                                                                                                                                                                                      if(!(_loc3_ && _loc1_))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(this._data);
                                                                                                                                                                                                         if(_loc2_ || Boolean(this))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop().hasEnoughMoney);
                                                                                                                                                                                                            if(_loc2_ || Boolean(this))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr0402:
                                                                                                                                                                                                               §§push(!§§pop());
                                                                                                                                                                                                               if(_loc2_ || _loc3_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§pop().showPlus = §§pop();
                                                                                                                                                                                                                  if(_loc2_ || _loc3_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr0420:
                                                                                                                                                                                                                     §§push(this.buyButton);
                                                                                                                                                                                                                     if(_loc2_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr042d:
                                                                                                                                                                                                                        §§pop().priceToConfirm = this._data.price;
                                                                                                                                                                                                                        if(_loc2_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr0438:
                                                                                                                                                                                                                           §§push(this.buyButton);
                                                                                                                                                                                                                           if(!_loc3_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§goto(addr0441);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           else
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr0516:
                                                                                                                                                                                                                              §§pop().visible = false;
                                                                                                                                                                                                                              addr0515:
                                                                                                                                                                                                                              if(_loc2_ || _loc3_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr0525:
                                                                                                                                                                                                                                 §§push(this.upgradeButton);
                                                                                                                                                                                                                                 if(!_loc3_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr052e:
                                                                                                                                                                                                                                    §§push(false);
                                                                                                                                                                                                                                    if(!_loc3_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§pop().includeInLayout = §§pop();
                                                                                                                                                                                                                                       if(!_loc3_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§goto(addr053f);
                                                                                                                                                                                                                                          §§push(this.upgradeButton);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr05ac);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr0540);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr053f);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr0566);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr04ad);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     else
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr04fc:
                                                                                                                                                                                                                        §§push(false);
                                                                                                                                                                                                                        if(!_loc3_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr0502:
                                                                                                                                                                                                                           §§pop().includeInLayout = §§pop();
                                                                                                                                                                                                                           if(!(_loc3_ && _loc2_))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§goto(addr0515);
                                                                                                                                                                                                                              §§push(this.buyButton);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr05ac);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr0516);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr05ca);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr0516);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr0502);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr042d);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr0441:
                                                                                                                                                                                                      §§pop().addEventListener(MouseEvent.CLICK,this.handleBuyUpgradeClick);
                                                                                                                                                                                                      if(_loc2_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr0453:
                                                                                                                                                                                                         §§push(this.upgradeButton);
                                                                                                                                                                                                         if(_loc2_ || _loc2_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr0464:
                                                                                                                                                                                                            §§pop().addEventListener(MouseEvent.CLICK,this.handleUpgradeClick);
                                                                                                                                                                                                            if(_loc2_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr0475:
                                                                                                                                                                                                               §§push(this.infoLabel);
                                                                                                                                                                                                               if(_loc2_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr047e:
                                                                                                                                                                                                                  §§push("styleName");
                                                                                                                                                                                                                  if(!(_loc3_ && Boolean(this)))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push("residentialProgressComment");
                                                                                                                                                                                                                     if(!(_loc3_ && Boolean(this)))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§pop().setStyle(§§pop(),§§pop());
                                                                                                                                                                                                                        if(_loc2_ || _loc1_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr04ad:
                                                                                                                                                                                                                           §§push(this.infoLabel);
                                                                                                                                                                                                                           if(_loc2_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr04b6:
                                                                                                                                                                                                                              §§push(LocaUtils.getString("rcl.booklayer.residential","rcl.booklayer.residential.untillUpgrade",[this._data.upgradeNextLevel]));
                                                                                                                                                                                                                              if(_loc2_ || Boolean(this))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§pop().text = §§pop();
                                                                                                                                                                                                                                 if(_loc3_ && _loc1_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr054f:
                                                                                                                                                                                                                                    this.upgradeIcon.dynaBmpSourceName = "upgrade_icon_all";
                                                                                                                                                                                                                                    if(!(_loc3_ && _loc2_))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr0566:
                                                                                                                                                                                                                                       §§push(this.progressBar);
                                                                                                                                                                                                                                       if(_loc2_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr056f:
                                                                                                                                                                                                                                          §§push(false);
                                                                                                                                                                                                                                          if(_loc2_ || _loc2_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr057d:
                                                                                                                                                                                                                                             §§pop().includeInLayout = §§pop();
                                                                                                                                                                                                                                             if(!(_loc3_ && _loc3_))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr0591:
                                                                                                                                                                                                                                                this.progressBar.visible = false;
                                                                                                                                                                                                                                                addr0590:
                                                                                                                                                                                                                                                addr058c:
                                                                                                                                                                                                                                                if(_loc2_ || _loc3_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr05ac:
                                                                                                                                                                                                                                                   §§push(this.infoLabel);
                                                                                                                                                                                                                                                   if(_loc2_ || _loc1_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr05c2:
                                                                                                                                                                                                                                                      §§pop().setStyle("styleName","residentialProgressCommentGold");
                                                                                                                                                                                                                                                      addr05bd:
                                                                                                                                                                                                                                                      addr05bf:
                                                                                                                                                                                                                                                      if(!_loc3_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr05da:
                                                                                                                                                                                                                                                         this.infoLabel.text = LocaUtils.getString("rcl.booklayer.residential","rcl.booklayer.residential.upgradeMax");
                                                                                                                                                                                                                                                         addr05ce:
                                                                                                                                                                                                                                                         addr05ca:
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr05dc);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr05ce);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr05ca);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr05ac);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr0591);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr0590);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr05dc);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr05da);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr05bd);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr0566);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr05c2);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr05bf);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr05bd);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr05dc);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         else
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr0540:
                                                                                                                                                                                                            §§pop().visible = false;
                                                                                                                                                                                                            addr053f:
                                                                                                                                                                                                            if(_loc2_ || _loc3_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr054f);
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr058c);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr05dc);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr0540);
                                                                                                                                                                                          }
                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                             addr03b9:
                                                                                                                                                                                             §§push(_loc1_);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr03ba);
                                                                                                                                                                                       }
                                                                                                                                                                                       else
                                                                                                                                                                                       {
                                                                                                                                                                                          addr03b7:
                                                                                                                                                                                          §§pop().includeInLayout = §§pop();
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr03b9);
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       addr03b6:
                                                                                                                                                                                       _loc1_ = §§pop();
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr03b7);
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    addr03b5:
                                                                                                                                                                                    var _temp_55:* = §§pop();
                                                                                                                                                                                    §§push(_temp_55);
                                                                                                                                                                                    §§push(_temp_55);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr03b6);
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 addr03b4:
                                                                                                                                                                                 §§push(false);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr03b5);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr053f);
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           addr039f:
                                                                                                                                                                           §§push(this.upgradeButton);
                                                                                                                                                                           if(!(_loc3_ && _loc2_))
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr03b4);
                                                                                                                                                                              §§push(this.upgradeButton);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr052e);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr0402);
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     addr0389:
                                                                                                                                                                     if(_loc2_)
                                                                                                                                                                     {
                                                                                                                                                                        §§pop().visible = §§pop();
                                                                                                                                                                        if(!(_loc3_ && _loc1_))
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr039f);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr0566);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr0516);
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  addr0388:
                                                                                                                                                                  §§push(_loc1_);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr0389);
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               addr0386:
                                                                                                                                                               §§pop().includeInLayout = §§pop();
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr0388);
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            addr0385:
                                                                                                                                                            _loc1_ = §§pop();
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr0386);
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         addr0384:
                                                                                                                                                         var _temp_58:* = §§pop();
                                                                                                                                                         §§push(_temp_58);
                                                                                                                                                         §§push(_temp_58);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr0385);
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      addr0383:
                                                                                                                                                      §§push(true);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr0384);
                                                                                                                                                }
                                                                                                                                                §§goto(addr0515);
                                                                                                                                             }
                                                                                                                                             §§goto(addr05ca);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             addr0367:
                                                                                                                                             §§pop().visible = §§pop();
                                                                                                                                             if(_loc2_)
                                                                                                                                             {
                                                                                                                                                §§push(this.buyButton);
                                                                                                                                                if(!(_loc3_ && _loc1_))
                                                                                                                                                {
                                                                                                                                                   §§goto(addr0383);
                                                                                                                                                   §§push(this.buyButton);
                                                                                                                                                }
                                                                                                                                                §§goto(addr0441);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr04ad);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          addr0358:
                                                                                                                                          if(!(_loc3_ && _loc1_))
                                                                                                                                          {
                                                                                                                                             §§goto(addr0367);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr057d);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       addr0357:
                                                                                                                                       §§push(_loc1_);
                                                                                                                                    }
                                                                                                                                    §§goto(addr0358);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    addr0355:
                                                                                                                                    §§pop().includeInLayout = §§pop();
                                                                                                                                 }
                                                                                                                                 §§goto(addr0357);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 addr0354:
                                                                                                                                 _loc1_ = §§pop();
                                                                                                                              }
                                                                                                                              §§goto(addr0355);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              addr0353:
                                                                                                                              var _temp_61:* = §§pop();
                                                                                                                              §§push(_temp_61);
                                                                                                                              §§push(_temp_61);
                                                                                                                           }
                                                                                                                           §§goto(addr0354);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           addr0352:
                                                                                                                           §§push(true);
                                                                                                                        }
                                                                                                                        §§goto(addr0353);
                                                                                                                     }
                                                                                                                     §§goto(addr056f);
                                                                                                                  }
                                                                                                                  §§goto(addr0438);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  addr032e:
                                                                                                                  §§pop().visible = §§pop();
                                                                                                                  if(_loc2_ || _loc3_)
                                                                                                                  {
                                                                                                                     §§push(this.progressBar);
                                                                                                                     if(!(_loc3_ && _loc2_))
                                                                                                                     {
                                                                                                                        §§goto(addr0352);
                                                                                                                        §§push(this.progressBar);
                                                                                                                     }
                                                                                                                     §§goto(addr0590);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr0525);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               addr032c:
                                                                                                            }
                                                                                                            §§goto(addr032e);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr032b:
                                                                                                            §§push(_loc1_);
                                                                                                         }
                                                                                                         §§goto(addr032c);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr0329:
                                                                                                         §§pop().includeInLayout = §§pop();
                                                                                                      }
                                                                                                      §§goto(addr032b);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr0328:
                                                                                                      _loc1_ = §§pop();
                                                                                                   }
                                                                                                   §§goto(addr0329);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr0327:
                                                                                                   var _temp_64:* = §§pop();
                                                                                                   §§push(_temp_64);
                                                                                                   §§push(_temp_64);
                                                                                                }
                                                                                                §§goto(addr0328);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr0326:
                                                                                                §§push(true);
                                                                                             }
                                                                                             §§goto(addr0327);
                                                                                          }
                                                                                          §§goto(addr04b6);
                                                                                       }
                                                                                       §§goto(addr03d0);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§push(this.infoLabel);
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          §§goto(addr0326);
                                                                                          §§push(this.infoLabel);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr047e);
                                                                                 }
                                                                                 §§goto(addr0475);
                                                                              }
                                                                              §§goto(addr01fd);
                                                                           }
                                                                           §§goto(addr0243);
                                                                        }
                                                                        §§goto(addr0155);
                                                                     }
                                                                     §§goto(addr0152);
                                                                  }
                                                                  §§goto(addr0590);
                                                               }
                                                               §§goto(addr05ca);
                                                            }
                                                            §§goto(addr053f);
                                                         }
                                                         §§goto(addr03d0);
                                                      }
                                                      §§goto(addr00fc);
                                                   }
                                                   §§goto(addr00fb);
                                                }
                                                §§goto(addr0464);
                                             }
                                             §§goto(addr0453);
                                          }
                                          §§goto(addr02ab);
                                       }
                                       §§goto(addr058c);
                                    }
                                    else
                                    {
                                       §§push(this.buyButton);
                                       if(_loc2_ || _loc1_)
                                       {
                                          §§goto(addr04fc);
                                       }
                                    }
                                    §§goto(addr0515);
                                 }
                                 §§goto(addr0184);
                              }
                              §§goto(addr0181);
                           }
                           §§goto(addr017d);
                        }
                        §§goto(addr017a);
                     }
                     §§goto(addr0525);
                  }
                  §§goto(addr0420);
               }
               addr05dc:
               return;
            }
            §§goto(addr01ec);
         }
         §§goto(addr054f);
      }
      
      private function handleUpgradeClick(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            dispatchEvent(new Event(UPGRADE_BUILDING,true));
         }
      }
      
      private function handleBuyUpgradeClick(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            if(this.buyButton.showPlus)
            {
               if(!_loc2_)
               {
                  dispatchEvent(new Event(BUY_DD,true));
                  if(!_loc3_)
                  {
                     addr006a:
                     dispatchEvent(new Event(BUY_UPGRADE,true));
                     if(!_loc2_)
                     {
                        this.data = this._data;
                     }
                  }
                  §§goto(addr0084);
               }
               §§goto(addr006a);
            }
            else
            {
               this._data.currentProgress = this._data.neededProgress;
               if(!_loc2_)
               {
                  §§goto(addr006a);
               }
            }
         }
         addr0084:
      }
      
      private function handleCreationComplete() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            §§push(this.buyButton);
            if(_loc1_)
            {
               §§pop().addEventListener(MouseEvent.MOUSE_OVER,this.handleMouseOver);
               if(_loc1_ || _loc2_)
               {
                  addr004f:
                  this.buyButton.addEventListener(MouseEvent.MOUSE_OUT,this.handleMouseOut);
                  if(!(_loc2_ && Boolean(this)))
                  {
                     addr0069:
                     invalidateProperties();
                  }
               }
               return;
            }
            §§goto(addr004f);
         }
         §§goto(addr0069);
      }
      
      private function handleRemoved() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            §§push(this.buyButton);
            if(!(_loc2_ && Boolean(this)))
            {
               §§pop().removeEventListener(MouseEvent.MOUSE_OVER,this.handleMouseOver);
               if(!(_loc2_ && _loc2_))
               {
                  addr0049:
                  §§push(this.buyButton);
                  if(!(_loc2_ && Boolean(this)))
                  {
                     addr0064:
                     §§pop().removeEventListener(MouseEvent.MOUSE_OUT,this.handleMouseOut);
                     if(_loc1_)
                     {
                        addr007a:
                        this.buyButton.removeEventListener(MouseEvent.CLICK,this.handleBuyUpgradeClick);
                        if(_loc1_)
                        {
                           this.upgradeButton.removeEventListener(MouseEvent.CLICK,this.handleUpgradeClick);
                        }
                     }
                     §§goto(addr009c);
                  }
                  §§goto(addr007a);
               }
               addr009c:
               return;
            }
            §§goto(addr0064);
         }
         §§goto(addr0049);
      }
      
      private function handleMouseOut(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_ || _loc3_)
         {
            if(this._data.currentProgress != this._data.neededProgress)
            {
               if(!(_loc3_ && Boolean(param1)))
               {
                  §§push(this.progressBar);
                  if(_loc4_ || _loc2_)
                  {
                     §§push(true);
                     if(!_loc3_)
                     {
                        §§pop().visible = §§pop();
                        if(!(_loc3_ && Boolean(this)))
                        {
                           §§goto(addr007b);
                        }
                        §§goto(addr00d8);
                     }
                     addr007b:
                     this.progressBar.includeInLayout = true;
                     §§goto(addr007a);
                  }
                  addr007a:
                  addr0076:
                  if(_loc4_ || Boolean(this))
                  {
                     addr00dc:
                     this.infoLabel.text = LocaUtils.getString("rcl.booklayer.residential","rcl.booklayer.residential.untillUpgrade",[this._data.upgradeNextLevel]);
                     addr00d8:
                  }
                  §§goto(addr00f3);
               }
               §§goto(addr00d8);
            }
            else
            {
               this.upgradeButton.visible = this.upgradeButton.includeInLayout = true;
               if(_loc4_ || Boolean(this))
               {
                  §§push(this.infoLabel);
                  if(!_loc3_)
                  {
                     §§pop().visible = this.infoLabel.includeInLayout = false;
                     if(_loc4_)
                     {
                        §§goto(addr00d8);
                     }
                     §§goto(addr00f3);
                  }
                  §§goto(addr00dc);
               }
            }
            addr00f3:
            return;
         }
         §§goto(addr0076);
      }
      
      private function handleMouseOver(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_)
         {
            if(this._data.currentProgress != this._data.neededProgress)
            {
               if(_loc4_)
               {
                  §§push(this.progressBar);
                  if(!_loc3_)
                  {
                     §§push(false);
                     if(!(_loc3_ && _loc3_))
                     {
                        §§pop().visible = §§pop();
                        if(!(_loc3_ && Boolean(this)))
                        {
                           addr006c:
                           this.progressBar.includeInLayout = false;
                           addr005d:
                           if(!_loc4_)
                           {
                              addr0098:
                              §§push(this.infoLabel);
                              if(!_loc3_)
                              {
                                 var _loc2_:Boolean;
                                 this.infoLabel.includeInLayout = _loc2_ = true;
                                 §§pop().visible = _loc2_;
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    addr00cd:
                                    this.infoLabel.text = LocaUtils.getString("rcl.booklayer.residential","rcl.booklayer.residential.upgradeBuy",[LocaUtils.getThousendSeperatedNumber(this._data.price)]);
                                    addr00c9:
                                 }
                                 §§goto(addr00e9);
                              }
                              §§goto(addr00cd);
                           }
                        }
                        §§goto(addr00c9);
                     }
                     §§goto(addr006c);
                  }
                  §§goto(addr005d);
               }
               §§goto(addr00c9);
            }
            else
            {
               this.upgradeButton.visible = this.upgradeButton.includeInLayout = false;
               if(_loc4_ || Boolean(param1))
               {
                  §§goto(addr0098);
               }
            }
            addr00e9:
            return;
         }
         §§goto(addr00c9);
      }
      
      private function _UpgradeProgressComponent_HGroup1_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.verticalAlign = "middle";
            if(!_loc3_)
            {
               _loc1_.horizontalAlign = "center";
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.width = 218;
                  if(_loc2_ || Boolean(this))
                  {
                     _loc1_.mxmlContent = [this._UpgradeProgressComponent_Group2_c(),this._UpgradeProgressComponent_VGroup1_c(),this._UpgradeProgressComponent_DynamicPlusButton1_i()];
                     if(!(_loc3_ && _loc2_))
                     {
                        §§goto(addr0092);
                     }
                     §§goto(addr009e);
                  }
               }
               addr0092:
               if(!_loc1_.document)
               {
                  if(_loc2_)
                  {
                     addr009e:
                     _loc1_.document = this;
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr009e);
      }
      
      private function _UpgradeProgressComponent_Group2_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.width = 31;
            if(_loc2_ || _loc3_)
            {
               _loc1_.height = 36;
               if(_loc2_)
               {
                  _loc1_.mxmlContent = [this._UpgradeProgressComponent_BriskImageDynaLib1_i()];
                  if(_loc2_ || _loc2_)
                  {
                     §§goto(addr0073);
                  }
                  §§goto(addr007f);
               }
            }
         }
         addr0073:
         if(!_loc1_.document)
         {
            if(_loc2_)
            {
               addr007f:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _UpgradeProgressComponent_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_residentialPopup";
            if(_loc2_)
            {
               addr002b:
               _loc1_.dynaBmpSourceName = "upgrade_icon";
               if(!_loc3_)
               {
                  _loc1_.id = "upgradeIcon";
                  if(_loc2_ || Boolean(this))
                  {
                     addr0054:
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || _loc2_)
                        {
                           _loc1_.document = this;
                           if(_loc2_)
                           {
                              addr007f:
                              this.upgradeIcon = _loc1_;
                              if(_loc2_)
                              {
                                 addr0089:
                                 BindingManager.executeBindings(this,"upgradeIcon",this.upgradeIcon);
                              }
                           }
                           return _loc1_;
                        }
                        §§goto(addr0089);
                     }
                  }
                  §§goto(addr007f);
               }
               §§goto(addr0054);
            }
            §§goto(addr0089);
         }
         §§goto(addr002b);
      }
      
      private function _UpgradeProgressComponent_VGroup1_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.gap = 4;
            if(_loc3_)
            {
               _loc1_.percentWidth = 100;
               if(!_loc2_)
               {
                  _loc1_.percentHeight = 100;
                  if(!(_loc2_ && _loc2_))
                  {
                     _loc1_.verticalAlign = "middle";
                     if(_loc3_ || _loc3_)
                     {
                        _loc1_.mxmlContent = [this._UpgradeProgressComponent_ProgressBarComponent1_i(),this._UpgradeProgressComponent_LocaLabel1_i(),this._UpgradeProgressComponent_MultistateButton1_i()];
                        if(_loc3_)
                        {
                           addr0095:
                           if(!_loc1_.document)
                           {
                              if(!(_loc2_ && Boolean(_loc1_)))
                              {
                                 addr00a9:
                                 _loc1_.document = this;
                              }
                           }
                           §§goto(addr00ad);
                        }
                        §§goto(addr00a9);
                     }
                  }
                  addr00ad:
                  return _loc1_;
               }
            }
            §§goto(addr00a9);
         }
         §§goto(addr0095);
      }
      
      private function _UpgradeProgressComponent_ProgressBarComponent1_i() : ProgressBarComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:ProgressBarComponent = new ProgressBarComponent();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.progress = 0.5;
            if(_loc3_ || _loc2_)
            {
               _loc1_.id = "progressBar";
               if(_loc3_ || Boolean(this))
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        §§goto(addr0078);
                     }
                  }
                  §§goto(addr0081);
               }
               addr0078:
               _loc1_.document = this;
               if(!_loc2_)
               {
                  addr0081:
                  this.progressBar = _loc1_;
                  if(_loc3_)
                  {
                     BindingManager.executeBindings(this,"progressBar",this.progressBar);
                  }
               }
               §§goto(addr0098);
            }
            addr0098:
            return _loc1_;
         }
         §§goto(addr0078);
      }
      
      private function _UpgradeProgressComponent_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || _loc2_)
            {
               _loc1_.styleName = "residentialProgressComment";
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.id = "infoLabel";
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && Boolean(this)))
                        {
                           _loc1_.document = this;
                           if(!_loc3_)
                           {
                              addr0088:
                              this.infoLabel = _loc1_;
                              if(!_loc3_)
                              {
                                 addr0092:
                                 BindingManager.executeBindings(this,"infoLabel",this.infoLabel);
                              }
                           }
                           return _loc1_;
                        }
                        §§goto(addr0092);
                     }
                  }
                  §§goto(addr0088);
               }
            }
         }
         §§goto(addr0092);
      }
      
      private function _UpgradeProgressComponent_MultistateButton1_i() : MultistateButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:MultistateButton = new MultistateButton();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.percentWidth = 100;
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.includeInLayout = false;
               if(!_loc3_)
               {
                  _loc1_.id = "upgradeButton";
                  if(!(_loc3_ && _loc3_))
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           addr0080:
                           _loc1_.document = this;
                           if(_loc2_)
                           {
                              §§goto(addr0089);
                           }
                           §§goto(addr0093);
                        }
                     }
                  }
               }
               addr0089:
               this.upgradeButton = _loc1_;
               if(_loc2_)
               {
                  addr0093:
                  BindingManager.executeBindings(this,"upgradeButton",this.upgradeButton);
               }
               §§goto(addr00a0);
            }
            addr00a0:
            return _loc1_;
         }
         §§goto(addr0080);
      }
      
      private function _UpgradeProgressComponent_DynamicPlusButton1_i() : DynamicPlusButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DynamicPlusButton = new DynamicPlusButton();
         if(_loc2_)
         {
            _loc1_.width = 40;
            if(_loc2_)
            {
               _loc1_.useConfirmation = true;
               if(_loc2_)
               {
                  _loc1_.iconImageName = "dd_button_icon";
                  if(_loc2_ || _loc2_)
                  {
                     _loc1_.iconLibName = "gui_resources_icons";
                     if(_loc2_)
                     {
                        addr0063:
                        _loc1_.setStyle("skinClass",DynamicPlusButtonSkin);
                        if(_loc2_)
                        {
                           addr0072:
                           _loc1_.id = "buyButton";
                           if(_loc2_)
                           {
                              addr007d:
                              if(!_loc1_.document)
                              {
                                 if(!(_loc3_ && Boolean(this)))
                                 {
                                    _loc1_.document = this;
                                    if(_loc2_ || _loc2_)
                                    {
                                       addr00ae:
                                       this.buyButton = _loc1_;
                                       if(!_loc3_)
                                       {
                                          addr00b8:
                                          BindingManager.executeBindings(this,"buyButton",this.buyButton);
                                       }
                                    }
                                    return _loc1_;
                                 }
                              }
                              §§goto(addr00ae);
                           }
                        }
                        §§goto(addr00b8);
                     }
                     §§goto(addr0072);
                  }
                  §§goto(addr0063);
               }
               §§goto(addr007d);
            }
         }
         §§goto(addr0063);
      }
      
      public function ___UpgradeProgressComponent_Group1_creationComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this.handleCreationComplete();
         }
      }
      
      public function ___UpgradeProgressComponent_Group1_removedFromStage(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.handleRemoved();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get buyButton() : DynamicPlusButton
      {
         return this._1271589544buyButton;
      }
      
      public function set buyButton(param1:DynamicPlusButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1271589544buyButton;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  addr0038:
                  this._1271589544buyButton = param1;
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(_loc2_))
                        {
                           addr006f:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buyButton",_loc2_,param1));
                        }
                     }
                     §§goto(addr007e);
                  }
               }
               §§goto(addr006f);
            }
            addr007e:
            return;
         }
         §§goto(addr0038);
      }
      
      [Bindable(event="propertyChange")]
      public function get infoLabel() : LocaLabel
      {
         return this._1213523686infoLabel;
      }
      
      public function set infoLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1213523686infoLabel;
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1213523686infoLabel = param1;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr005b:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"infoLabel",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007a);
               }
               §§goto(addr005b);
            }
            addr007a:
            return;
         }
         §§goto(addr005b);
      }
      
      [Bindable(event="propertyChange")]
      public function get progressBar() : ProgressBarComponent
      {
         return this._1131509414progressBar;
      }
      
      public function set progressBar(param1:ProgressBarComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1131509414progressBar;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  addr0036:
                  this._1131509414progressBar = param1;
                  if(_loc4_)
                  {
                     §§goto(addr0041);
                  }
                  §§goto(addr0051);
               }
               addr0041:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc4_)
                  {
                     addr0051:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"progressBar",_loc2_,param1));
                  }
               }
               §§goto(addr0060);
            }
            addr0060:
            return;
         }
         §§goto(addr0036);
      }
      
      [Bindable(event="propertyChange")]
      public function get upgradeButton() : MultistateButton
      {
         return this._676505710upgradeButton;
      }
      
      public function set upgradeButton(param1:MultistateButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._676505710upgradeButton;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(this))
               {
                  this._676505710upgradeButton = param1;
                  if(!_loc4_)
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
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"upgradeButton",_loc2_,param1));
                  }
               }
               §§goto(addr007d);
            }
            addr007d:
            return;
         }
         §§goto(addr006e);
      }
      
      [Bindable(event="propertyChange")]
      public function get upgradeIcon() : BriskImageDynaLib
      {
         return this._1844912971upgradeIcon;
      }
      
      public function set upgradeIcon(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1844912971upgradeIcon;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && _loc3_))
               {
                  this._1844912971upgradeIcon = param1;
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(this))
                        {
                           addr0076:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"upgradeIcon",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0085);
               }
               §§goto(addr0076);
            }
            addr0085:
            return;
         }
         §§goto(addr0076);
      }
   }
}

