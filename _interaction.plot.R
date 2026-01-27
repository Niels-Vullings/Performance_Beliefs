df_S_1$Pred <- predict(model_list.C[["H1a_Model.1"]], level = 0)

ggplot(df_S_1, aes(x = Condition, y = Pred,
                   color = Contrast, group = Contrast)) +
  stat_summary(fun = mean, geom = "line", size = 1) +
  stat_summary(fun = mean, geom = "point", size = 2) +
  labs(title = "Interaction Plot (H1a_Model.1): Contrast × Condition",
       y = "Predicted Y",
       x = "Condition") +
  theme_bw()

df_S_2$Pred <- predict(model_list.C[["H1a_Model.2"]], level = 0)

ggplot(df_S_2, aes(x = Condition, y = Pred,
                   color = Contrast, group = Contrast)) +
  stat_summary(fun = mean, geom = "line", size = 1) +
  stat_summary(fun = mean, geom = "point", size = 2) +
  labs(title = "Interaction Plot (H1a_Model.2): Contrast × Condition",
       y = "Predicted Y",
       x = "Condition") +
  theme_bw()


# Predicted values (population level)
df_S_3$Pred <- predict(model_list.C[["H1b_Model.1"]], level = 0)

ggplot(df_S_3, aes(x = Condition, y = Pred,
                   color = Contrast, group = Contrast)) +
  stat_summary(fun = mean, geom = "line", size = 1) +
  stat_summary(fun = mean, geom = "point", size = 2) +
  labs(title = "Interaction Plot (H1b_Model.1): Contrast × Condition",
       y = "Predicted Y",
       x = "Condition") +
  theme_bw()